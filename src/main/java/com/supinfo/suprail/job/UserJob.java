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
			SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
			String salt = String.valueOf(secureRandom.nextInt());
			String to_hash = String.valueOf(salt) + password;
			
			MessageDigest crypt = MessageDigest.getInstance("SHA-1");
	        crypt.reset();
	        crypt.update(password.getBytes("UTF-8"));
	        String hash = BaseUtil.byteToHex(crypt.digest());
		
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
	public User getUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
