package com.supinfo.suprail.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.supinfo.suprail.database.PersistenceManager;
import com.supinfo.suprail.entity.Line;
import com.supinfo.suprail.interfaces.dao.ITrainDao;

public class TrainDao implements ITrainDao{

	@Override
	public void createLine(Line line) {
		try{
			EntityManager em = PersistenceManager.getEntityManager();
	        EntityTransaction et = em.getTransaction();
	        et.begin();
	        em.merge(line);
	        et.commit();
	        em.close();
		}catch(Exception ex){
			ex.printStackTrace();
			String toto = ex.getMessage();
		}
	}
}
