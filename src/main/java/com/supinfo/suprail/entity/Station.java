package com.supinfo.suprail.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.supinfo.suprail.entity.association.StationLineAssociation;

@Entity
public class Station {
	@Id
	private long id;
	
	private String name;
	private String address;
	private String zipcode;
	private String city;
	private String country;
	private double latitude;
	private double longitude;
	private String description;

	@OneToMany(mappedBy="station")
	private List<StationLineAssociation> lines;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	public List<StationLineAssociation> getLines() {
		return lines;
	}

	public void setLines(List<StationLineAssociation> lines) {
		this.lines = lines;
	}
	
	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
