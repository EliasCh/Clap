package pk.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import pk.entities.User;
import pk.services.AuthService;
import pk.services.UpdateService;

@Controller
@RequestMapping("/user")
@SessionAttributes("currUser")
public class UserController {
	@Autowired 
	AuthService authService ;
	@Autowired 
	UpdateService updateService ; 
	private String dateFormat="yyyy-MM-DD";
	private SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
	 @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        sdf.setLenient(true);
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	    }
	 private boolean validDate(String dateToCheck) {
		 if(dateToCheck==null) 
			 return false; 
		 try {
		 sdf.parse(dateToCheck);
		 }
		 catch(ParseException exp) {
			 return false; 
		 }
		String dateParts[] = dateToCheck.split("-");
		String year  = dateParts[0];
		String month  = dateParts[1];
		String day = dateParts[2];
		Integer jahr = Integer.parseInt(year);
		Integer monat = Integer.parseInt(month);
		Integer tag= Integer.parseInt(day);
		 if (tag<1 | monat <1)
			 return false ;
		 if(monat==2) {
			 if(jahr%4 != 0)
				 return tag<=28 ;
			 if(jahr%100 != 0 )
				 return tag<=29;
			 if(jahr %400 != 0)
				 return tag<=28;
			 return 
					 tag<=29;
		 }
		 else {
			 if(monat>12 )
				 return false;
			 int[] days = new int[] {31,28,31,30,31,30,31,31,30,31,30,31};
			 if( tag>days[monat] )
				 return false; 
		 }
		 return true;  
	 }
	@RequestMapping("/create")
	public String creation(Model model) {
		User user = new User();
		model.addAttribute("user",user);
		return "createUser"; 
	}   
	@RequestMapping("/save")
	public String save(Model model, @Valid @ModelAttribute("user") User user , BindingResult br,@RequestParam("pass") String pass,@RequestParam("dob") String dob ) {
		System.out.println(user+pass);
		if(br.hasErrors() | (!validDate(dob))) {
			List<ObjectError> errs = br.getAllErrors();
			System.out.println(errs);
			user.setDob(null);
			System.out.println("erros");
			model.addAttribute("error", "Please fill the fields correctly.");
			return "createUser" ;
		}
		String pass_hash = authService.generatePasswordHash(pass);  
		try {
		if(authService.isUser(user.getEmail())) {
			System.out.println("the user exists");
			model.addAttribute("error", "There is already a user with the same email");
			return "createUser";
		}
		else {
			user.setPass_hash(pass_hash);
			authService.createUser(user);
			User currUser= new User(user);
			model.addAttribute("currUser", currUser);
			return "redirect:/home";
		}
		}
		catch(Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
			model.addAttribute("error", "Something went wrong.");
			return "createUser";
		}
	}
	@RequestMapping("/profile")
	public String profile(@ModelAttribute("currUser") User currUser,Model model) {
		if(currUser==null) {
			return "signin";
		}
		String dob=sdf.format(currUser.getDob());
		model.addAttribute("dob", dob);
		model.addAttribute("userProfile", currUser.clone());
		return "profile";
	}   
	@RequestMapping("/update")
	public String update(Model model, @Valid @ModelAttribute("userProfile") User user ,BindingResult br ,  @RequestParam("dob") String dob, @RequestParam("pass") String pass) {
		System.out.println("pass"+pass);
		if(br.hasErrors() | (!validDate(dob))) {
			List<ObjectError> errs = br.getAllErrors();
			System.out.println(errs);
			model.addAttribute("error", "Please fill the fields correctly");
			user.setDob(null);
			return "profile";
		}
		System.out.println("user "+user);
		Map<String,Object> modelMap = model.asMap();
		User currUser = (User) modelMap.get("currUser");
		user.setEmail(currUser.getEmail());
		if(pass == "" | pass == null) {
			System.out.println("no password given ");
			user.setPass_hash(currUser.getPass_hash());
		}
		else {
			user.setPass_hash(authService.generatePasswordHash(pass));
		}
		System.out.println("Final user "+user);
		try {
		updateService.updateUser(user);
		}
		catch(Exception exp) {
			model.addAttribute("error","Something went wrong :/ ");
			return "profile";
		}
		model.addAttribute("msg","profile updated");
		return "profile"; 
	}
	@RequestMapping("/delete")
	public String deleteUser(Model model,SessionStatus sessionStatus)  {
		System.out.println("to delete user");
		Map<String,Object> modelMap = model.asMap();
		try {
		authService.deleteUser(((User) modelMap.get("currUser")).getEmail());
		}
		catch(Exception exp) {
			model.addAttribute("error", "Something went wrong");
			return "profile";
		}
		sessionStatus.setComplete();
		return "redirect:/home" ;
	}
	@RequestMapping("/signi")
	public String authUser(Model model) {
		model.addAttribute("userAuth",new User());
		return "signi";
	}
	@RequestMapping("/descon")
	public String descon(Model model,SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		return "redirect:/home";
	}
	@RequestMapping("/auth")
	public String authUser(Model model,@ModelAttribute("userAuth") User userAuth,@RequestParam("pass") String pass) {
		try {
		if(authService.authUser(userAuth.getEmail(), pass)) {
			User currUser = updateService.getUserByEmail(userAuth.getEmail());
			System.out.println("User authenticated "+currUser);
			model.addAttribute("currUser", currUser);
		}
		else {
			model.addAttribute("error","Please retype your credentials");
			return "signi";
		}
		}
		catch(Exception exp ) {
			model.addAttribute("error","Please retype your credentials");
			return "signi";
		}
		return "redirect:/home";
	}
}
