package pk.controllers;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pk.entities.Solution;
import pk.entities.User;
import pk.services.SearchService;

@Controller
@RequestMapping("/")
public class TestController {
	@Autowired 
	private SearchService searchService ;  
	@RequestMapping("/test")
	public String test(Model model) throws Exception  {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-DD");
		model.addAttribute("test", 
							searchService.searchUserVotedTheSolution(
									new User("useruser@mail.com",
											 "Te usa",
											  sdf.parse("1996-01-08"),
											  "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"
											 ),
									new Solution(66,"lo3ba",0,new Timestamp(new Date().getTime()))
							)
						   );
		return "test" ;
	}
	
}
