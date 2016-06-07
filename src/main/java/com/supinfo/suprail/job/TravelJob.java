package com.supinfo.suprail.job;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;

import com.supinfo.suprail.config.BaseParam;
import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.Station;
import com.supinfo.suprail.entity.Travel;
import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.job.ITravelJob;
import com.supinfo.suprail.request.ApiRequest;

public class TravelJob implements ITravelJob{

	@Override
	public String getStations() throws Exception {
		String req_url = BaseParam.base_api_url + "/stations"; 
		return ApiRequest.sendGETRequest(req_url);
	}
	
	@Override
	public Travel findTravel(SearchStation search) throws Exception {
		String req_url = BaseParam.base_api_url + "/travel/find"; 
		
		ObjectMapper mapper = new ObjectMapper();
		String json_param = mapper.writeValueAsString(search);		//On récupère le json de l'objet

		//Debug
		//String result = "{'retour':[{'start_time':1465116480000,'start':{'latitude':0,'name':'Marseille','id':22,'longitude':0},'end_time':1465122240000,'end':{'zipcode':'75571','country':'FRANCE','address':'Place Louis Armand','city':'Paris','latitude':0,'name':'Paris, Gare de Lyon','id':1,'longitude':0},'train_trip':{'departure_date':1465113600000,'aller':false,'id':12}}],'aller':[{'start_time':1465113600000,'start':{'zipcode':'75571','country':'FRANCE','address':'Place Louis Armand','city':'Paris','latitude':0,'name':'Paris, Gare de Lyon','id':1,'longitude':0},'end_time':1465122240000,'end':{'latitude':0,'name':'Marseille','id':22,'longitude':0},'train_trip':{'departure_date':1465113600000,'aller':true,'id':11}}]}";
		String result = ApiRequest.sendPOSTRequest(req_url, json_param);
		
		JSONObject json = new JSONObject(result);
		String json_travel = json.getJSONObject("travel").toString();
		
		Travel travel = mapper.readValue(json_travel, Travel.class);
		
		//TODO : récupération de l'objet et affichage dans une nouvelle page
		
		int status = json.getInt("html_status");
		if(status != 200){
			throw new Exception();
		}
		
		return travel;
	}

	@Override
	public Station findStation(int station_id) throws Exception {
		String req_url = BaseParam.base_api_url + "/station/find/" + String.valueOf(station_id); 

		ObjectMapper mapper = new ObjectMapper();
		
		String result = ApiRequest.sendGETRequest(req_url);
		JSONObject json = new JSONObject(result);
		String json_station = json.getJSONObject("station").toString();
		
		Station station = mapper.readValue(json_station, Station.class);
		
		
		return station;
	}
	
	@Override
	public List<Station> listStation() throws Exception {
		String req_url = BaseParam.base_api_url + "/stations"; 
		
		ObjectMapper mapper = new ObjectMapper();
		//Debug
		//String result = "{'retour':[{'start_time':1465116480000,'start':{'latitude':0,'name':'Marseille','id':22,'longitude':0},'end_time':1465122240000,'end':{'zipcode':'75571','country':'FRANCE','address':'Place Louis Armand','city':'Paris','latitude':0,'name':'Paris, Gare de Lyon','id':1,'longitude':0},'train_trip':{'departure_date':1465113600000,'aller':false,'id':12}}],'aller':[{'start_time':1465113600000,'start':{'zipcode':'75571','country':'FRANCE','address':'Place Louis Armand','city':'Paris','latitude':0,'name':'Paris, Gare de Lyon','id':1,'longitude':0},'end_time':1465122240000,'end':{'latitude':0,'name':'Marseille','id':22,'longitude':0},'train_trip':{'departure_date':1465113600000,'aller':true,'id':11}}]}";
		String result = ApiRequest.sendGETRequest(req_url);
		
		JSONObject json = new JSONObject(result);
		String json_travel = json.getJSONArray("stations").toString();
		JsonNode node = mapper.readTree(result);
		
		int status = json.getInt("html_status");

	    try {
		   return (List<Station>)mapper.convertValue(node.get("stations"), mapper.getTypeFactory().constructCollectionType(List.class, Station.class));
	  		} 
	    catch (IllegalArgumentException e) {
		   // TODO Auto-generated catch block
		   
		   throw new Exception();
		  }
	
		//TODO : récupération de l'objet et affichage dans une nouvelle page
		
	}
}
