package pk.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/herr")
public class HttpErrController {
	public String errorx0x(Model model ) {
		System.out.println("/herr");
		model.addAttribute("type", "Something went wrong.<a href='/'>Go home</a>");
		return "error";
	}
}
