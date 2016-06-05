package com.supinfo.suprail.job;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;

import com.supinfo.suprail.config.BaseParam;
import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.Travel;
import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.job.ITravelJob;
import com.supinfo.suprail.request.ApiRequest;

public class TravelJob implements ITravelJob{

	@Override
	public Travel findTravel(SearchStation search) throws Exception {
		String req_url = BaseParam.base_api_url + "/travel/find"; 
		
		ObjectMapper mapper = new ObjectMapper();
		String json_param = mapper.writeValueAsString(search);		//On récupère le json de l'objet
		
		
		
		
		//Debug
		//String json_travel = "{'retour':[{'start_time':1465116480000,'start':{'latitude':0,'name':'Marseille','id':22,'longitude':0},'end_time':1465122240000,'end':{'zipcode':'75571','country':'FRANCE','address':'Place Louis Armand','city':'Paris','latitude':0,'name':'Paris, Gare de Lyon','id':1,'longitude':0},'train_trip':{'departure_date':1465113600000,'aller':false,'id':12}}],'aller':[{'start_time':1465113600000,'start':{'zipcode':'75571','country':'FRANCE','address':'Place Louis Armand','city':'Paris','latitude':0,'name':'Paris, Gare de Lyon','id':1,'longitude':0},'end_time':1465122240000,'end':{'latitude':0,'name':'Marseille','id':22,'longitude':0},'train_trip':{'departure_date':1465113600000,'aller':true,'id':11}}]}";
		
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
}
