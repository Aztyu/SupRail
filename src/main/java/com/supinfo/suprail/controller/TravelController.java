package com.supinfo.suprail.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.Station;
import com.supinfo.suprail.entity.Travel;
import com.supinfo.suprail.interfaces.job.ITravelJob;
import com.supinfo.suprail.interfaces.job.IUserJob;
import com.supinfo.suprail.job.TravelJob;


@Controller
public class TravelController {
	@Autowired
	ITravelJob travel_job;
	
	@RequestMapping(value = "/search-travel", method = RequestMethod.GET)
    public String getSearchPage(Model model,HttpServletRequest request) {
        return "/search-travel";	
    }
	
	@RequestMapping(value = "/buyTravel/{id}", method = RequestMethod.GET)
    public String buyTravelPage(Model model,HttpServletRequest request, @PathVariable int id) {
		HttpSession session = request.getSession();
		List<Travel> tr = (List<Travel>)session.getAttribute("list");
		Travel travel = tr.get(id);
		
		session.setAttribute("travelCart", travel);
		
		if(session.getAttribute("user") != null){
			return "redirect:/user/historyUser";		
		}else{
			model.addAttribute("erreurUser", "error");
			return "redirect:/register";
		}
    }

    @RequestMapping(value = "/searchTravel", method = RequestMethod.POST)
    public String searchTravel(Model model,HttpServletRequest request) {
        try{
        	SearchStation schStation = new SearchStation();

        	schStation.setAller_only(((String)request.getParameter("blah1")).equals("false"));
        	schStation.setDeparture_station_id(Long.parseLong((String) request.getParameter("StartCityId")));
        	schStation.setArrival_station_id(Long.parseLong((String) request.getParameter("EndCityId")));
        	schStation.setPassager(Integer.parseInt(request.getParameter("travelers")));
        	schStation.setDeparture_date(request.getParameter("date_timepicker_start"), request.getParameter("timepicker_start"));
        	schStation.setArrivalDate(request.getParameter("date_timepicker_end"), request.getParameter("timepicker_end"));
        	
        	List<Travel> travel = travel_job.findTravel(schStation);
        	request.getSession().setAttribute("list", travel);

        	model.addAttribute("travels", travel);
        	model.addAttribute("searchOk", "info");
        }catch(Exception ex){
        	model.addAttribute("errorsearch", "error");
        	return "/index";
        }
    	return "search-travel";		
    }
    @RequestMapping(value = "/user/historyUser", method = RequestMethod.GET)
    public String getHistoryPage(Model model,HttpServletRequest request) {
        return "customer-history";	
    }
    
    @RequestMapping(value = "/station-info/{station_id}", method = RequestMethod.GET)
    public String getInfoStation(Model model,HttpServletRequest request, @PathVariable int station_id) {
        try {
			Station station = travel_job.findStation(station_id);
			
			model.addAttribute("stationinfo", station);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return "station-info";
    }
    
    @RequestMapping(value = "/user/checkout-complete", method = RequestMethod.GET)
    public String getcheckoutComplete(Model model,HttpServletRequest request) {
        return "checkout-complete";	
    }
    
    @RequestMapping(value = "/station-list", method = RequestMethod.GET)
    public String getListStation(Model model,HttpServletRequest request) {
        try {
        	int page = 0;
			List<Station> list = travel_job.listStation();
			String pagination = request.getParameter("page");
			if(pagination == null){
				page = 1;
				list = list.subList(0, 10);
			}
			else{
				page = Integer.parseInt(pagination);
				int end = page*10;
				int start = end-10;
				
				if(end > list.size()){
					end = list.size();
				}
				list = list.subList(start, end);
			}
			model.addAttribute("stationList", list);
			model.addAttribute("page", page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return "station-list";	
    }
}
