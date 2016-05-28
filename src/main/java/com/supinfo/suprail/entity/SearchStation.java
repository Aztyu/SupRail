package com.supinfo.suprail.entity;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.google.api.client.util.DateTime;

public class SearchStation {
	private long arrival_station_id;
	
	private long departure_station_id;
	
	private DateTime departure_date;
	
	private DateTime arrivalDate; //L' heure de départ du trajet retour
	
	private int passager;

	public long getArrival_station_id() {
		return arrival_station_id;
	}

	public void setArrival_station_id(long arrival_station_id) {
		this.arrival_station_id = arrival_station_id;
	}

	public long getDeparture_station_id() {
		return departure_station_id;
	}

	public void setDeparture_station_id(long departure_station_id) {
		this.departure_station_id = departure_station_id;
	}

	public DateTime getDeparture_date() {
		return departure_date;
	}

	public void setDeparture_date(DateTime departure_date) {
		this.departure_date = departure_date;
	}
	
	public void setDeparture_date(DateTime departure_date, int hour, int minutes) {
		this.departure_date = departure_date;
	}

	public DateTime getArrivalDate() {
		return arrivalDate;
	}

	public void setArrivalDate(DateTime arrivalDate) {
		this.arrivalDate = arrivalDate;
	}
	
	public void setArrivalDate(DateTime arrivalDate, int hour, int minutes) {
		this.arrivalDate = arrivalDate;
	}

	public int getPassager() {
		return passager;
	}

	public void setPassager(int passager) {
		this.passager = passager;
	}
	
	
}
