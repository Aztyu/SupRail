package com.supinfo.suprail.controller;

import java.util.Map;

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
	
	@RequestMapping(value = "/searchTravel", method = RequestMethod.GET)
    public String getCreationUser(Model model,HttpServletRequest request) {
        return "/search-travel";		
    }

    @RequestMapping(value = "/searchTravel", method = RequestMethod.POST)
    public String searchTravel(Model model,HttpServletRequest request) {
        try{
        	SearchStation schStation = new SearchStation();
        	
        	Map debug = request.getParameterMap();
        	schStation.setDeparture_station_id(Long.parseLong((String) request.getParameter("StartCityId")));
        	schStation.setArrival_station_id(Long.parseLong((String) request.getParameter("EndCityId")));
        	schStation.setDeparture_date(request.getParameter("date_timepicker_start"), request.getParameter("timepicker_start"));
        	schStation.setArrivalDate(request.getParameter("date_timepicker_end"), request.getParameter("timepicker_end"));
        	schStation.setPassager(Integer.parseInt(request.getParameter(request.getParameter("travelers"))));
        	
        	travel_job.findTravel(schStation);
        	model.addAttribute("registerok", "info");
        }catch(Exception ex){
        	model.addAttribute("errorlogin", "error");
        	return "/register";
        }
    	return "redirect:/search-travel";		
    }

}
