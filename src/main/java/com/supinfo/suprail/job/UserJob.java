package com.supinfo.suprail.job;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import javax.naming.directory.SearchResult;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;

import com.supinfo.suprail.config.BaseParam;
import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.job.IUserJob;
import com.supinfo.suprail.request.ApiRequest;
import com.supinfo.suprail.util.UserUtil;

public class UserJob implements IUserJob{

	@Override
	public User createUser(User user) throws IOException {
		String req_url = BaseParam.base_api_url + "/user/register?"; 
		
		req_url += UserUtil.registerParams(user);
		
		String result = ApiRequest.sendGETRequest(req_url);
		
		JSONObject json = new JSONObject(result);
		
		ObjectMapper mapper = new ObjectMapper();
		String json_user = json.getJSONObject("user").toString();
		User user_json = mapper.readValue(json_user, User.class);
		
		return user_json;
	}

	@Override
	public User getUser(String login, String password) throws NoSuchAlgorithmException, IOException {
		String req_url = BaseParam.base_api_url + "/user/login?login=" + login + "&password=" + password; 
		
		String result = ApiRequest.sendGETRequest(req_url);
		
		JSONObject json = new JSONObject(result);
		
		ObjectMapper mapper = new ObjectMapper();
		String json_user = json.getJSONObject("user").toString();
		User user = mapper.readValue(json_user, User.class);
		
		return user;
	}
	
	@Override
	public User getUserFromGoogle(String google_id) throws GeneralSecurityException, IOException{
		String req_url = BaseParam.base_api_url + "/user/login/google?google_id=" + google_id; 
		
		String result = ApiRequest.sendGETRequest(req_url);
		
		JSONObject json = new JSONObject(result);
		
		ObjectMapper mapper = new ObjectMapper();
		String json_user = json.getJSONObject("user").toString();
		User user = mapper.readValue(json_user, User.class);
		
		return user;
	}
	
	@Override
	public void updateUser(User u) throws  Exception {
		String req_url = BaseParam.base_api_url + "/user/edit"; 
		
		String result = ApiRequest.sendPOSTRequest(req_url, u.getParamsMap());
		
		JSONObject json = new JSONObject(result);
		
		int status = json.getInt("status");
		if(status != 200){
			throw new Exception();
		}
	}
	
	@Override
	public void test() throws JsonGenerationException, JsonMappingException, IOException {
		String req_url = BaseParam.base_api_url + "/travel/find"; 
		
		SearchStation sr = new SearchStation();
		
		ObjectMapper mapper = new ObjectMapper();
		String json_param = mapper.writeValueAsString(sr);
		
		String result = ApiRequest.sendPOSTRequest(req_url, json_param);
		
		JSONObject json = new JSONObject(result);
		
		int status = json.getInt("status");
		if(status != 200){
			throw new Exception();
		}
	}
}
