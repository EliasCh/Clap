package pk.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pk.daos.TopicDAO;
import pk.entities.Topic;

@Controller
@SessionAttributes("currUser")
@RequestMapping("/")
public class RootController {
	@Autowired 
	TopicDAO topicDAO ;
	@RequestMapping()
	public String home(Model model,HttpServletRequest rq) {
		model.addAttribute("topic", new Topic());
		System.out.println("info "+rq.getAttribute("info"));
		return "home";
	}
	
}
