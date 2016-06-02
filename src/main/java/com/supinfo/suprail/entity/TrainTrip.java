package com.supinfo.suprail.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.codehaus.jackson.map.annotate.JsonSerialize;

@Entity
@JsonSerialize(include=JsonSerialize.Inclusion.NON_EMPTY)
public class TrainTrip {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	private Timestamp departure_date;
	
	private boolean aller;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="train_id")
	private Train train;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Timestamp getDeparture_date() {
		return departure_date;
	}

	public void setDeparture_date(Timestamp departure_date) {
		this.departure_date = departure_date;
	}

	public boolean isAller() {
		return aller;
	}

	public void setAller(boolean aller) {
		this.aller = aller;
	}

	public void setDeparture_date(long time) {
		this.departure_date = new Timestamp(time);
	}

	public Train getTrain() {
		return train;
	}

	public void setTrain(Train train) {
		this.train = train;
	}
}
