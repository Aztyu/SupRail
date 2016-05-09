package com.supinfo.suprail.job;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.supinfo.suprail.dao.UserDao;
import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.dao.IUserDao;
import com.supinfo.suprail.interfaces.job.IUserJob;
import com.supinfo.suprail.util.BaseUtil;

public class UserJob implements IUserJob{
	
	@Autowired
	private IUserDao dao;

	@Override
	public void createUser(User user, String password) {
		try {
			String salt = BaseUtil.generateSalt();
	        String hash = BaseUtil.getSaltedPassword(salt, password);
		
	        user.setSalt(salt);
	        user.setPassword(hash);
	        
	        dao.createUser(user);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	@Override
	public User getUser(String login, String password) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		String salted = BaseUtil.getSaltedPassword(dao.getUserSalt(login), password);
		return dao.getUser(login, salted);
	}
	
	@Override
	public User getUserFromGoogle(String google_id) throws GeneralSecurityException, IOException{
		NetHttpTransport transport = new NetHttpTransport();
		GsonFactory jsonFactory = new GsonFactory();
		GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(transport, jsonFactory )
			    .setAudience(Arrays.asList("62410611142-3mese73l1crnh0hc3p5rdr4k0eicdpb5.apps.googleusercontent.com"))
			    .setIssuer("accounts.google.com")
			    .build();
		
		GoogleIdToken idToken = verifier.verify(google_id);
		
		if (idToken != null) {
			Payload payload = idToken.getPayload();
			String email = payload.getEmail();
			
			User user = dao.getGoogleUser(email);
			
			if(user == null){
				user = new User();
				user.setGoogleUser(true);
				user.setEmail(email);
				user.setFirstName((String) payload.get("name"));
				user.setLastName((String) payload.get("family_name"));
				user.setUserName((String) payload.get("given_name"));
			
				dao.createUser(user);
			}
			
		  	return user;
		} else {
			return null;
		}
	}
}
