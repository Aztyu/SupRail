package com.supinfo.suprail.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.supinfo.suprail.interfaces.job.ITravelJob;


@Controller
public class ApiController {
	@Autowired
	ITravelJob travel_job;
	
	@RequestMapping(value = "/api/get-stations", method = RequestMethod.GET, produces={"application/json; charset=UTF-8"}) 
    public @ResponseBody String getStations(HttpServletRequest request) throws IOException {
		try {
			return travel_job.getStations();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
    }
}
