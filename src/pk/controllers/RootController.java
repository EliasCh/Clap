package pk.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pk.daos.TopicDAO;
import pk.entities.Topic;

@Controller
@RequestMapping("/")
public class RootController {
	@Autowired 
	TopicDAO topicDAO ;
	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("topic", new Topic());
		return "home";
	}
	
}
