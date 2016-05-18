package com.supinfo.suprail.entity.association;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import com.supinfo.suprail.entity.Line;
import com.supinfo.suprail.entity.Station;

@Entity
@IdClass(StationLineAssociationId.class)
public class StationLineAssociation {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	  /*@Id
	  private long station_id;
	  
	  @Id
	  private long line_id;*/
	
	  private long station_order;
	  
	  @ManyToOne
	  @PrimaryKeyJoinColumn(name="STATION_ID", referencedColumnName="ID")
	  private Station station;
	  
	  @ManyToOne
	  @PrimaryKeyJoinColumn(name="LINE_ID", referencedColumnName="ID")
	  private Line line;

	public long getStation_order() {
		return station_order;
	}

	public void setStation_order(long station_order) {
		this.station_order = station_order;
	}

	public Station getStation() {
		return station;
	}

	public void setStation(Station station) {
		this.station = station;
	}

	public Line getLine() {
		return line;
	}

	public void setLine(Line line) {
		this.line = line;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}  
}
