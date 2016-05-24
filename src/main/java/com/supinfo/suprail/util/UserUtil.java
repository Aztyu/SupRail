package com.supinfo.suprail.util;

import java.util.HashMap;

import com.supinfo.suprail.entity.User;

public class UserUtil {

	public static String registerParams(User user) {
		StringBuilder param_string = new StringBuilder();
		
		param_string.append("email=");
		param_string.append(user.getEmail());
		
		param_string.append("&firstname=");
		param_string.append(user.getFirstName());
		
		param_string.append("&lastname=");
		param_string.append(user.getLastName());
		
		param_string.append("&password=");
		param_string.append(user.getPassword());
		
		return param_string.toString();
	}

	public static HashMap<String, Object> registerParamsMap(User u) {
		// TODO Auto-generated method stub
		HashMap<String, Object> param_map = new HashMap<String, Object>();
		param_map.put("firstname", u.getFirstName());
		param_map.put("lastname", u.getLastName());
		param_map.put("country", u.getCountry());
		param_map.put("city", u.getCity());
		param_map.put("address", u.getAddress());
		param_map.put("zipcode", u.getZipcode());
		param_map.put("phone", u.getPhone());
		
		return param_map;
	}

}
