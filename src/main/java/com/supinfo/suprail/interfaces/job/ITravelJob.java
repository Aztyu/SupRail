package com.supinfo.suprail.interfaces.job;

import java.util.List;

import com.supinfo.suprail.entity.Reservation;
import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.Station;
import com.supinfo.suprail.entity.Travel;
import com.supinfo.suprail.entity.User;

public interface ITravelJob {
	public List<Travel> findTravel(SearchStation search) throws Exception;
	public Station findStation(int station_id) throws Exception;
	public List<Station> listStation() throws Exception;
	public String getStations() throws Exception;
	public Reservation sendCart(Travel travel, User user) throws Exception;
	public void validateReservation(Reservation reserv);
	public List<Reservation> getHistoryUser(long userId) throws Exception;

	public Reservation getPdf(int id) throws Exception;
	
}
