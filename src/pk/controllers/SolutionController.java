package pk.controllers;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pk.daos.TopicDAO;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;
import pk.services.CreationService;

@Controller
@RequestMapping("/solution")
public class SolutionController {
	//TODO To remplace with a service
	@Autowired 
	private TopicDAO topicDAO ; 
	@Autowired 
	CreationService creationService ; 
	
	@RequestMapping("/create")
	public String editSolution(Model model) {
		/*Solution solution = new Solution();
		Date date= new Date();
		solution.setSdate(new Timestamp(date.getTime()));*/
		model.addAttribute("solutionTopic",new Topic());
		return "solution";
	}
	@RequestMapping("/save")
	public String saveSolution(Model model , @Valid @ModelAttribute("solutionTopic") Topic topic , BindingResult br,@RequestParam("url") String url) {
		if(br.hasErrors()) {
			model.addAttribute("error", "Please fill the fields correctly");
			return "solution";
		}
		System.out.println("Topic "+topic);
		Solution solution = new Solution();
		solution.setUrl(url);
		solution.setSdate(new Timestamp(new Date().getTime()));
		Map<String,Object> modelMap = model.asMap();
		System.out.println("This user "+(User) modelMap.get("currUser"));
		try {
		creationService.createSolution(solution, topic, (User) modelMap.get("currUser"));
		System.out.println("solution created");
		}
		catch(Exception exp ) {
			model.addAttribute("error", "Something went wrong please retype your solution");
			return "solution";
		}
		model.addAttribute("info", "Solution submitted.Thank you !");
		return "redirect:/home";
	}
}
