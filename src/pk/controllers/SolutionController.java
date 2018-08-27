package pk.controllers;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import pk.daos.SolutionDAO;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;
import pk.services.CreationService;
import pk.services.SearchService;
import pk.services.UpdateService;

@Controller
@SessionAttributes("currUser")
@RequestMapping("/solution")
public class SolutionController {
	//TODO To remplace with a service 
	@Autowired 
	CreationService creationService ; 
	@Autowired 
	SearchService searchService ;
	@Autowired 
	UpdateService updateService ;
	@Autowired 
	SolutionDAO solutionDAO ;
	@RequestMapping("/create")
	public String editSolution(Model model) {
		/*Solution solution = new Solution();
		Date date= new Date();
		solution.setSdate(new Timestamp(date.getTime()));*/
		model.addAttribute("solutionTopic",new Topic());
		return "solution";
	}
	@RequestMapping("/save")
	public String saveSolution(Model model , @Valid @ModelAttribute("solutionTopic") Topic topic , BindingResult br,@RequestParam("url") String url,HttpServletRequest rq) {
		if(br.hasErrors() | url.isEmpty()) {
			model.addAttribute("error", "Please fill the fields correctly");
			return "solution";
		}
		System.out.println("Topic "+topic);
		Solution solution = new Solution();
		solution.setUrl(url);
		Timestamp ts = new Timestamp(new Date().getTime());
		ts.setNanos(0);
		solution.setSdate(ts); 
		Map<String,Object> modelMap = model.asMap();
		System.out.println("This user "+(User) modelMap.get("currUser"));
		try {
		creationService.createSolution(solution, topic, (User) modelMap.get("currUser"));
		System.out.println("solution created and marked as voted by the user");
		}
		catch(Exception exp ) {
			if(exp.toString().equals("java.lang.Exception: The same solution for the same topic has already been submitted "))
				model.addAttribute("error","The same solution for the same topic has already been submitted");
			else 
				model.addAttribute("error", "Something went wrong please retype your solution");
			System.out.println(exp);
			return "solution";
		}
		rq.setAttribute("info", "You solution has been submitted");
		return "redirect:/";
	}
	@RequestMapping("/upvote")
	public String upvoteSolution(Model model , @RequestParam int id ) {
		Map<String,Object> modelMap = model.asMap();
		if(modelMap.get("currUser")==null) 
			return "redirect:/user/signi?upvote=1" ;
		System.out.println("id "+id);
		Solution solution = searchService.searchById(id);
		System.out.println("Already voted "+solutionDAO.readUserSolutionVoted((User) modelMap.get("currUser") , solution)); 
		try {
		solutionDAO.writeUserSolutionVoted((User) modelMap.get("currUser"), solution);
		solution.setVote(solution.getVote()+1);
		updateService.updateSolution(solution);
//		throw new Exception();
		}
		catch(org.springframework.dao.DuplicateKeyException duplicateKeyExp) {
			model.addAttribute("err", "You have already voted for that solution ");
			model.addAttribute("topic",new Topic());
			return "home";
		}
		catch(Exception exp ) {
			model.addAttribute("err", "Upvoted not submitted please retry ");
			model.addAttribute("topic",new Topic());
			return "home";
		}
		model.addAttribute("upvote", "Upvote submitted ");
		return "redirect:/" ;
	}
}
