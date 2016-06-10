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
import com.supinfo.suprail.entity.Reservation;
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
	public List<Travel> findTravel(SearchStation search) throws Exception {
		String req_url = BaseParam.base_api_url + "/travel/find"; 
		
		ObjectMapper mapper = new ObjectMapper();
		String json_param = mapper.writeValueAsString(search);		//On récupère le json de l'objet

		String result = ApiRequest.sendPOSTRequest(req_url, json_param);
		
		JsonNode node = mapper.readTree(result);
		
		int status = node.get("html_status").asInt();
		if(status == 200){
			return (List<Travel>)mapper.convertValue(node.get("travels"), mapper.getTypeFactory().constructCollectionType(List.class, Travel.class));
		}else{
			return null;
		}
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
		if(status == 200){
			return (List<Station>)mapper.convertValue(node.get("stations"), mapper.getTypeFactory().constructCollectionType(List.class, Station.class));
		}else{
			return null;
		}
	}

	@Override
	public Reservation sendCart(Travel travel, String user) throws Exception {
		String req_url = BaseParam.base_api_url + "/travel/buy/"+user;
		
		ObjectMapper mapper = new ObjectMapper();
		String json_param = mapper.writeValueAsString(travel);

		String result = ApiRequest.sendPOSTRequest(req_url, json_param);
		JsonNode node = mapper.readTree(result);
			
		Reservation rsrv = mapper.treeToValue(node.get("reservation"), Reservation.class);
		
		int status = node.get("html_status").asInt();
		if(status != 200){
			throw new Exception();
		}else{
			return rsrv;
		}
	}

	@Override
	public List<Reservation> getHistoryUser(long userId) throws Exception {
		String req_url = BaseParam.base_api_url + "/reservations/" + userId; 

		ObjectMapper mapper = new ObjectMapper();
		String result = ApiRequest.sendGETRequest(req_url);

		JSONObject json = new JSONObject(result);
		String json_travel = json.getJSONArray("reservations").toString();
		JsonNode node = mapper.readTree(result);
		
		int status = json.getInt("html_status");
		if(status == 200){
			return (List<Reservation>)mapper.convertValue(node.get("reservations"), mapper.getTypeFactory().constructCollectionType(List.class, Reservation.class));
		}else{
			return null;
		}
	}
}
