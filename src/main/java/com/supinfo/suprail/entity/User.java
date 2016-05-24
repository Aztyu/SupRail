package com.supinfo.suprail.entity;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String country;
	private String city;
	private String address;
	private int zipcode;
	private int phone;
	private String salt;
	
	private boolean googleUser;
	private boolean facebookUser;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public boolean isGoogleUser() {
		return googleUser;
	}
	public void setGoogleUser(boolean googleUser) {
		this.googleUser = googleUser;
	}
	public boolean isFacebookUser() {
		return facebookUser;
	}
	public void setFacebookUser(boolean facebookUser) {
		this.facebookUser = facebookUser;
	}
	
	// Functions //
	
	public HashMap<String, Object> getParamsMap() {
		// TODO Auto-generated method stub
		HashMap<String, Object> param_map = new HashMap<String, Object>();
		param_map.put("firstname", this.getFirstName());
		param_map.put("lastname", this.getLastName());
		param_map.put("password", this.getPassword());
		param_map.put("country", this.getCountry());
		param_map.put("city", this.getCity());
		param_map.put("address", this.getAddress());
		param_map.put("zipcode", this.getZipcode());
		param_map.put("phone", this.getPhone());
		
		return param_map;
	}
	
	public String getApiAuthString(){
		return "id=" + this.getId() + "&=" + this.getPassword();
	}
}
