package com.klu.project.HelpHub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.project.HelpHub.Service.DonorService;
import com.klu.project.HelpHub.Model.*;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DonorController {

	@Autowired 
	private DonorService donorService;
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
	  @PostMapping("insertdonor")
	  public ModelAndView insertDonor(HttpServletRequest request) {
		    // Retrieving data from HTML form fields and storing them in variables
		    String username = request.getParameter("username");
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    String confirmPassword = request.getParameter("confirmPassword");
		    
		    
		    Donor donor = new Donor();
		    donor.setUsername(username);
		    donor.setEmail(email);
		    donor.setPassword(password); // Make sure to hash the password before saving it

		    // Call service to register the donor
		    String message = donorService.donorRegistration(donor);

		    // Prepare ModelAndView to show success message
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("donorLogin"); // Redirect to success page
		    mv.addObject("message", message);
		    return mv;  
	  }
	  
	  
	  @GetMapping("/login")
	  public ModelAndView donorLogin()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("donorLogin");
		  return mv;
	  }
	  
	  @PostMapping("/checkdonorlogin")
	  public ModelAndView checkdonorlogin(HttpServletRequest request) {  
	      ModelAndView mv = new ModelAndView();
	      String email = request.getParameter("email");
	      String password = request.getParameter("password");
	      
	      Donor donor = donorService.checkdonorLogin(email, password);
	      if (donor != null) {
	          // Store the username in session
	          request.getSession().setAttribute("username", donor.getUsername());
	          mv.setViewName("donorDash");
	      } else {
	          mv.setViewName("donorLogin");
	          mv.addObject("message", "Login Failed");
	      }
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
	  
	  
	  
	  @GetMapping("/donor/profile")
	    public ModelAndView showDonorProfile(HttpServletRequest request) {
	        String username = (String) request.getSession().getAttribute("username"); // Retrieve username from session
	        Donor donor = donorService.getDonorByUsername(username);
	        
	        ModelAndView mv = new ModelAndView();
	        if (donor != null) {
	            mv.setViewName("donorProfile"); // Name of the JSP file (without .jsp)
	            mv.addObject("donor", donor);
	        } else {
	            mv.setViewName("error"); // Redirect to an error page
	            mv.addObject("message", "Donor not found.");
	        }
	        return mv;
	    }

	  
	  
	  
}
