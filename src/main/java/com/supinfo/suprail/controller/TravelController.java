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
	
	@RequestMapping(value = "/search-travel", method = RequestMethod.GET)
    public String getSearchPage(Model model,HttpServletRequest request) {
        return "/search-travel";	
    }

    @RequestMapping(value = "/searchTravel", method = RequestMethod.POST)
    public String searchTravel(Model model,HttpServletRequest request) {
        try{
        	SearchStation schStation = new SearchStation();
        	
        	schStation.setDeparture_station_id(Long.parseLong((String) request.getParameter("StartCityId")));
        	schStation.setArrival_station_id(Long.parseLong((String) request.getParameter("EndCityId")));
        	schStation.setPassager(Integer.parseInt(request.getParameter(request.getParameter("travelers"))));
        	schStation.setDeparture_date(request.getParameter("date_timepicker_start"), request.getParameter("timepicker_start"));
        	schStation.setArrivalDate(request.getParameter("date_timepicker_end"), request.getParameter("timepicker_end"));
        	
        	travel_job.findTravel(schStation);
        	model.addAttribute("searchOk", "info");
        }catch(Exception ex){
        	model.addAttribute("errorsearch", "error");
        	return "/index";
        }
    	return "redirect:/search-travel";		
    }
    @RequestMapping(value = "/user/historyUser", method = RequestMethod.GET)
    public String getHistoryPage(Model model,HttpServletRequest request) {
        return "customer-history";	
    }
    @RequestMapping(value = "/station-info", method = RequestMethod.GET)
    public String getInfoStation(Model model,HttpServletRequest request) {
        return "station-info";
    }
    @RequestMapping(value = "/checkout-complete", method = RequestMethod.GET)
    public String getcheckoutComplete(Model model,HttpServletRequest request) {
        return "checkout-complete";	
    }
    
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String getTest(Model model,HttpServletRequest request) {
        return "/test";	
    }
}
