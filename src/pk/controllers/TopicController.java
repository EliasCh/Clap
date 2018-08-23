package pk.controllers;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import pk.daos.TopicDAO;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.services.SearchService;

@Controller
@SessionAttributes({"sessionTopic","currUser"})
@RequestMapping("/topic")
public class TopicController {
	@Autowired
	SearchService searchService ; 
	@Autowired 
	TopicDAO topicDAO ;
	@RequestMapping("/search") 
	public String search(Model model,@Valid @ModelAttribute("topic") Topic topic,BindingResult br) throws Exception {	
		if(br.hasErrors()) 
			return "home";		
		//searchService validated
		Topic readTopic = topicDAO.read(topic.getTitle(),topic.getVersion());
		if(readTopic == null) {
			model.addAttribute("err","No there is no current solutions.<a href='/clap/user/create'>Sign up</a> to help fellow geeks  ");
		}
		else {
		List<Solution> solutions = searchService.searchByTopic(readTopic);
		if(solutions.isEmpty())
			model.addAttribute("err", "No there is no current solutions.<a href='/clap/user/create'>Sign up</a> to help fellow geeks");
		System.out.println(solutions);
		model.addAttribute("solutions", solutions);
		}
		model.addAttribute("topic",new Topic());
		return "home" ;
	}
	@RequestMapping("/edit") 
	public String editTopic(Model model) {
		model.addAttribute("editTopic",new Topic());
		return "topic";
	}
	@RequestMapping("check")
	public String checkTopic(Model model,@Valid @ModelAttribute("editTopic") Topic topic,BindingResult br) {
		System.out.println(topic);
		if(br.hasErrors()) 
			return "topic";
		topic.setTitle(topic.getTitle().trim().replaceAll(" +"," ").toLowerCase());
		System.out.println("trimmmed "+topic);
		//searchService validated
		Topic sessionTopic = topicDAO.read(topic.getTitle(),topic.getVersion());
		if(sessionTopic == null) {
			topicDAO.create(topic);
			sessionTopic = topicDAO.read(topic.getTitle(),topic.getVersion());
		}
		model.addAttribute("sessionTopic",sessionTopic);
		return "redirect:/solution/edit" ;
	}
}
