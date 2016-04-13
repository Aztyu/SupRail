package com.supinfo.suprail.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
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
	
	
}
