package com.supinfo.suprail.entity;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Generated;

import com.supinfo.suprail.util.BaseUtil;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String userName;
	private String firstName;
	private String lastName;
	private String email;
	
	private String password;
	private String salt;
	
	private boolean isGoogleUser;
	private boolean isFacebookUser;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isGoogleUser() {
		return isGoogleUser;
	}
	public void setGoogleUser(boolean isGoogleUser) {
		this.isGoogleUser = isGoogleUser;
	}
	public boolean isFacebookUser() {
		return isFacebookUser;
	}
	public void setFacebookUser(boolean isFacebookUser) {
		this.isFacebookUser = isFacebookUser;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
}
