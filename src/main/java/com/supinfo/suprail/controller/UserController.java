package com.supinfo.suprail.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.job.IUserJob;

@Controller
public class UserController {
	@Autowired
    IUserJob user_job;
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getCreationUser(Model model,HttpServletRequest request) {
        return "register";		
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String saveUser(Model model, HttpServletRequest request){
        User u;
        
        try{
	        u = new User();
	        
	        u.setFirstName(request.getParameter("firstname"));
	        u.setLastName(request.getParameter("lastname"));
	        u.setEmail(request.getParameter("email"));
	        
	        user_job.createUser(u, request.getParameter("password"));
	        
	        return "redirect:/";
        }catch(Exception ex){
        	model.addAttribute("error", "error");
        	return "register";
        }
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(Model model,HttpServletRequest request) {
        try{
        	User user = user_job.getUser((String)request.getParameter("login"), (String)request.getParameter("password"));
        	request.getSession().setAttribute("user", user);
        }catch(Exception ex){
        	return "home";
        }
    	return "redirect:/main";		
    }
    
    @RequestMapping(value = "/login/google", method = RequestMethod.POST)
    public ResponseEntity<String> loginGoogleUser(Model model,HttpServletRequest request) {
        try{
        	User user = user_job.getUserFromGoogle((String)request.getParameter("google_id"));
        	request.getSession().setAttribute("user", user);
        }catch(Exception ex){
        	return new ResponseEntity<String>(HttpStatus.FORBIDDEN);
        }
        return new ResponseEntity<String>(HttpStatus.OK);		
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutUser(Model model,HttpServletRequest request) {
        request.getSession().removeAttribute("user");
    	return "home";		
    }
}
