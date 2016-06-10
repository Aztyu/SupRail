package com.supinfo.suprail.entity;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;

@JsonSerialize(include=JsonSerialize.Inclusion.NON_EMPTY)
public class SearchStep {
	Station start;
	Timestamp start_time;
	Station end;
	Timestamp end_time;
	TrainTrip train_trip;
	double price;
	int time;

	public Station getStart() {
		return start;
	}

	public void setStart(Station start) {
		start.setLines(null);
		this.start = start;
	}

	public Timestamp getStart_time() {
		return start_time;
	}

	public void setStart_time(Date date) {
		this.start_time = new Timestamp(date.getTime());
	}

	public Station getEnd() {
		return end;
	}

	public void setEnd(Station end) {
		end.setLines(null);
		this.end = end;
	}

	public Timestamp getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Date date) {
		this.end_time = new Timestamp(date.getTime());
	}

	public TrainTrip getTrain_trip() {
		return train_trip;
	}

	public void setTrain_trip(TrainTrip train_trip) {
		this.train_trip = train_trip;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void setStart_time(Timestamp start_time) {
		this.start_time = start_time;
	}

	public void setEnd_time(Timestamp end_time) {
		this.end_time = end_time;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	@JsonIgnore
	public String getFormatedStartDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date date = new Date(this.start_time.getTime());
		return sdf.format(date);
	}
	
	@JsonIgnore
	public String getFormatedStopDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date date = new Date(this.end_time.getTime());
		return sdf.format(date);
	}
	
	@JsonIgnore
	public String getFormatedStartTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		Date date = new Date(this.start_time.getTime());
		return sdf.format(date);
	}
	
	@JsonIgnore
	public String getFormatedStopTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		Date date = new Date(this.end_time.getTime());
		return sdf.format(date);
	}
}
