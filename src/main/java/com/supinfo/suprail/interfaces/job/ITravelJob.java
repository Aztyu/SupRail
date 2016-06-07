package com.supinfo.suprail.interfaces.job;

import java.util.List;

import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.Station;
import com.supinfo.suprail.entity.Travel;

public interface ITravelJob {
	public List<Travel> findTravel(SearchStation search) throws Exception;

	public Station findStation(int station_id) throws Exception;

	public List<Station> listStation() throws Exception;

	public String getStations() throws Exception;
	
}
