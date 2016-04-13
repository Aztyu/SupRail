package com.supinfo.suprail.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.IUserDao;

@Controller
public class UserController {
	@Autowired
    IUserDao user_dao;
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getCreationUser(Model model,HttpServletRequest request) {
        return "register";		
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String saveUser(Model model, HttpServletRequest request){
        User u = new User();
        u.setFirstName(request.getParameter("firstname"));
        u.setLastName(request.getParameter("lastname"));
        
        user_dao.createUser(u);
        
        return "redirect:/index";
    }
}
