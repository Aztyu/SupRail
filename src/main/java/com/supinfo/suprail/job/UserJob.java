package com.supinfo.suprail.job;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import org.springframework.beans.factory.annotation.Autowired;

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

}
