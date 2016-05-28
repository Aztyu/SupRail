package com.supinfo.suprail.interfaces.job;

import com.supinfo.suprail.entity.SearchStation;

public interface ITravelJob {
	public Object findTravel(SearchStation search) throws Exception;
}
