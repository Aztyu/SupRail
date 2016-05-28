package com.supinfo.suprail.entity;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.google.api.client.util.DateTime;

public class SearchStation {
	private long arrival_station_id;
	
	private long departure_station_id;
	
	private Date departure_date;
	
	private Date arrival_date; //L' heure de départ du trajet retour
	
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

	
	public void setDeparture_date(String departure_date, String time) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date date = sdf.parse(departure_date);
		Timestamp timestamp = new Timestamp(date.getTime());
		int hour = Integer.parseInt(time.substring(0, 2));
		int minute = Integer.parseInt(time.substring(3, 5));
		
		timestamp.setMinutes(minute);
		timestamp.setHours(hour);
		
		this.departure_date = timestamp;
	}
	
	public void setArrivalDate(String arrival_date, String time) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date date = sdf.parse(arrival_date);
		Timestamp timestamp = new Timestamp(date.getTime());
		int hour = Integer.parseInt(time.substring(0, 2));
		int minute = Integer.parseInt(time.substring(3, 5));
		
		timestamp.setMinutes(minute);
		timestamp.setHours(hour);
		
		this.arrival_date = timestamp;
	}

	public int getPassager() {
		return passager;
	}

	public void setPassager(int passager) {
		this.passager = passager;
	}
	
	
}
