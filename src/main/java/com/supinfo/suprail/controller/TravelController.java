package com.supinfo.suprail.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.interfaces.job.ITravelJob;
import com.supinfo.suprail.interfaces.job.IUserJob;


@Controller
public class TravelController {
	@Autowired
	ITravelJob travel_job;

    @RequestMapping(value = "/searchTravel", method = RequestMethod.POST)
    public String searchTravel(Model model,HttpServletRequest request) {
        try{
        	SearchStation schStation = new SearchStation();
        	
        	schStation.setDeparture_station_id(Long.parseLong((String) request.getAttribute("station_id")));
        	//TODO récupére toutes les données de la recherche
        	
        	travel_job.findTravel(schStation);
        }catch(Exception ex){
        	model.addAttribute("errorlogin", "error");
        	return "/register";
        }
    	return "redirect:/";		
    }
}
