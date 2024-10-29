package com.klu.project.HelpHub.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DonorController {

	  @GetMapping("/")
	  public ModelAndView home()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("home");
		  return mv;
	  }
	  
	  @GetMapping("/signup")
	  public ModelAndView donorReg()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("donorReg");
		  return mv;
	  }
	  
	  @GetMapping("/login")
	  public ModelAndView donorLogin()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("donorLogin");
		  return mv;
	  }
	  
	  @GetMapping("/about")
	  public String AboutUs()
	  {
		  return "AboutUs"; 
	  }
	  
	  @GetMapping("/contact")
	  public String Contact()
	  {
		  return "Contact";
	  }
}
