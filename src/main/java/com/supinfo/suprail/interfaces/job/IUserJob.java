package com.supinfo.suprail.interfaces.job;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;

import com.supinfo.suprail.entity.User;

public interface IUserJob {
    public User getUser(String login, String password) throws UnsupportedEncodingException, NoSuchAlgorithmException, IOException;
	public User createUser(User user) throws IOException;
	public User getUserFromGoogle(String google_id) throws GeneralSecurityException, IOException;
	public User getUserFromFacebook(String id, String email, String name) throws GeneralSecurityException, IOException;
	public void updateUser(User u) throws Exception;
}
