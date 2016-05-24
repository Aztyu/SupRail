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
	        u.setPassword(request.getParameter("password"));
	        
	        request.getSession().setAttribute("user", user_job.createUser(u));
	        model.addAttribute("registerok", "info");
	        return "/register";
        }catch(Exception ex){
        	model.addAttribute("erroregister", "error");
        	return "register";
        }
    }
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactSupport(Model model,HttpServletRequest request) {
        return "contact";		
    }
    
    @RequestMapping(value = "/user/updateUser", method = RequestMethod.GET)
    public String getUpdateUser(Model model,HttpServletRequest request) {
        return "customer-info";		
    }
    
    @RequestMapping(value = "/user/updateUser", method = RequestMethod.POST)
    public String updateUser(Model model, HttpServletRequest request){
    	try{
    		User u = (User) request.getSession().getAttribute("user");
    		
        	u.setFirstName(request.getParameter("firstname"));
            u.setLastName(request.getParameter("lastname"));
            u.setEmail(request.getParameter("email"));
            u.setCountry(request.getParameter("country"));
            u.setCity(request.getParameter("city"));
            u.setAddress(request.getParameter("address"));
            u.setZipcode(Integer.parseInt(request.getParameter("zipcode")));
            u.setPhone(Integer.parseInt(request.getParameter("phone")));
            
            user_job.updateUser(u);
            
            model.addAttribute("updregisterOk", "info");
            return "/customer-info";
    	}catch(Exception ex){
    	
    		model.addAttribute("errorupdregister", "error");
    		return "/customer-info";
    	}
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(Model model,HttpServletRequest request) {
        try{
        	User user = user_job.getUser((String)request.getParameter("login"), (String)request.getParameter("password"));
        	request.getSession().setAttribute("user", user);
        }catch(Exception ex){
        	model.addAttribute("errorlogin", "error");
        	return "/register";
        }
    	return "redirect:/";		
    }
    
    @RequestMapping(value = "/login/google", method = RequestMethod.GET)
    public String loginGoogleUser(Model model,HttpServletRequest request) {
        try{
        	User user = user_job.getUserFromGoogle((String)request.getParameter("google_id"));
        	request.getSession().setAttribute("user", user);
        }catch(Exception ex){
        	model.addAttribute("errorlogin", "error");
        	ex.printStackTrace();
        	return "/register";
        }
        return "redirect:/";		
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutUser(Model model,HttpServletRequest request) {
        request.getSession().removeAttribute("user");
    	return "redirect:/";		
    }
}
