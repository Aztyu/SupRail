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


}
