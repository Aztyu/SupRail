package com.supinfo.suprail.job;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;

import com.supinfo.suprail.config.BaseParam;
import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.interfaces.job.ITravelJob;
import com.supinfo.suprail.request.ApiRequest;

public class TravelJob implements ITravelJob{

	@Override
	public Object findTravel(SearchStation search) throws Exception {
		String req_url = BaseParam.base_api_url + "/travel/find"; 
		
		ObjectMapper mapper = new ObjectMapper();
		String json_param = mapper.writeValueAsString(search);		//On récupère le json de l'objet
		
		String result = ApiRequest.sendPOSTRequest(req_url, json_param);
		
		JSONObject json = new JSONObject(result);
		
		//TODO : récupération de l'objet et affichage dans une nouvelle page
		
		int status = json.getInt("status");
		if(status != 200){
			throw new Exception();
		}
		
		return null;
	}
}
