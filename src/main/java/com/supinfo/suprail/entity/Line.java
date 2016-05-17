package com.supinfo.suprail.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import com.supinfo.suprail.entity.association.StationLineAssociation;

@Entity
public class Line {
	@Id
	private long id;
	
	private String reference;
	private String name;
	private Double avg_speed;
	
	@OneToMany(mappedBy="line")
	private List<StationLineAssociation> stations;
	
	public Line(){
		this.name = new String();
		this.reference = new String();
		this.avg_speed = 0.0;
		this.stations = new ArrayList<StationLineAssociation>(); 
	}
	
	public Line(String reference, String name, double avg_speed, List<StationLineAssociation> stations){
		this.name = name;
		this.reference = reference;
		this.avg_speed = avg_speed;
		this.stations.addAll(stations);
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getAvg_speed() {
		return avg_speed;
	}

	public void setAvg_speed(Double avg_speed) {
		this.avg_speed = avg_speed;
	}

	public List<StationLineAssociation> getStations() {
		return stations;
	}

	public void setStations(List<StationLineAssociation> stations) {
		this.stations = stations;
	}

	public void addStation(Station station, int station_order){
		StationLineAssociation sla = new StationLineAssociation();
		sla.setLine(this);
		sla.setStation(station);
		sla.setStation_order(station_order);
	}
}
