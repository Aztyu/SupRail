package com.supinfo.suprail.interfaces.job;

import com.supinfo.suprail.entity.SearchStation;
import com.supinfo.suprail.entity.Travel;

public interface ITravelJob {
	public Travel findTravel(SearchStation search) throws Exception;
}
