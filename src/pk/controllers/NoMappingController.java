package pk.controllers;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoMappingController {
	@RequestMapping()
	public String errorRd(Model model,ServletRequest request){
		HttpServletRequest rq = (HttpServletRequest)  request ;
		System.out.println("NoMappingController");
		model.addAttribute("type", "The url is invalid");
		model.addAttribute("contextPath", rq.getContextPath());
		return "error";
	}
}
