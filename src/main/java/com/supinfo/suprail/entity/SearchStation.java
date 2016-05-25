package com.supinfo.suprail.entity;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.google.api.client.util.DateTime;

public class SearchStation {
	
	private int id; 
	private DateTime departDate;
	private DateTime arrivalDate;
	private int passager;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public DateTime getDepartDate() {
		return departDate;
	}

	public void setDepartDate(DateTime departDate) {
		this.departDate = departDate;
	}

	public DateTime getArrivalDate() {
		return arrivalDate;
	}
	
	public List<NameValuePair> getParamsTravel() {
		List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();
		urlParameters.add(new BasicNameValuePair("id", String.valueOf((this.getId() ))));
		urlParameters.add(new BasicNameValuePair("departDate", String.valueOf(this.getDepartDate())));
		urlParameters.add(new BasicNameValuePair("arrivalDate", String.valueOf(this.getArrivalDate())));

		return urlParameters;
	}









	public void setArrivalDate(DateTime arrivalDate) {
		this.arrivalDate = arrivalDate;
	}









	public int getPassager() {
		return passager;
	}









	public void setPassager(int passager) {
		this.passager = passager;
	}









	public List<NameValuePair> getParamsMap() {
		List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();
		urlParameters.add(new BasicNameValuePair("nameStart", this.getName()));
		urlParameters.add(new BasicNameValuePair("nameEnd", this.getName()));
		urlParameters.add(new BasicNameValuePair("nameStart", this.getName()));

		return urlParameters;
	}
}
