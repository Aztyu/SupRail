package com.supinfo.suprail.entity;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;

@JsonSerialize(include=JsonSerialize.Inclusion.NON_EMPTY)
public class Travel {
private List<SearchStep> aller;
	
	private List<SearchStep> retour;
	
	private int minutes_aller;
	
	private int minutes_retour;
	
	private double price;

	public List<SearchStep> getAller() {
		return aller;
	}

	public void setAller(List<SearchStep> aller) {
		this.aller = aller;
	}

	public List<SearchStep> getRetour() {
		return retour;
	}

	public void setRetour(List<SearchStep> retour) {
		this.retour = retour;
	}

	public int getMinutes_aller() {
		return minutes_aller;
	}

	public void setMinutes_aller(int minutes_aller) {
		this.minutes_aller = minutes_aller;
	}

	public int getMinutes_retour() {
		return minutes_retour;
	}

	public void setMinutes_retour(int minutes_retour) {
		this.minutes_retour = minutes_retour;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	@JsonIgnore
	public String getStationAller(){
		return aller.get(0).start.getName();
	}
	
	@JsonIgnore
	public String getStationRetour(){
		return aller.get(aller.size()-1).end.getName();
	}
}
