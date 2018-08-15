package pk.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pk.daos.SolutionDAO;
import pk.daos.TopicDAOJDBCImpl;
import pk.daos.UserDAOJDBCImpl;
import pk.services.AuthService;
import pk.services.CreationService;
import pk.services.SearchService;

@Controller
@RequestMapping("/")
public class TestController {
	@Autowired
	private SolutionDAO solutionDAO ;
	@Autowired
	private TopicDAOJDBCImpl topicDAO ;
	@Autowired 
	private UserDAOJDBCImpl userDAO; 
	@Autowired
	CreationService creationService ;
	@Autowired 
	AuthService authService ; 
	@RequestMapping("/test")
	public String test(Model model) throws Exception  {
		System.out.println(authService.authUser("user45@mail.com","123456"));
		return "test" ;
	}
}
