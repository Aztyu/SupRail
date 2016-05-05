package com.supinfo.suprail.interfaces.job;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import com.supinfo.suprail.entity.User;

public interface IUserJob {
    public User getUser(String login, String password) throws UnsupportedEncodingException, NoSuchAlgorithmException;
	public void createUser(User user, String password);
}
