package com.supinfo.suprail.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.supinfo.suprail.database.PersistenceManager;
import com.supinfo.suprail.entity.User;
import com.supinfo.suprail.interfaces.dao.IUserDao;

public class UserDao implements IUserDao{
	@Override
    public void createUser(User user) {
        EntityManager em = PersistenceManager.getEntityManager();
        EntityTransaction et = em.getTransaction();
        et.begin();
        em.persist(user);
        et.commit();
        em.close();
    }
	
	@Override
	public User getUser(String login, String password) {
		EntityManager em = PersistenceManager.getEntityManager();
		Query query = em.createQuery("SELECT u FROM User AS u WHERE u.email = :log AND u.password = :pwd");
		query.setParameter("log", login);
		query.setParameter("pwd", password);
		return (User)query.getSingleResult();

	}
	
	@Override
	public String getUserSalt(String login) {
		EntityManager em = PersistenceManager.getEntityManager();
		Query query = em.createQuery("SELECT u.salt FROM User AS u WHERE u.email = :log");
		query.setParameter("log", login);
		return (String)query.getSingleResult();
	}
	
	@Override
	public User getGoogleUser(String email) {
		EntityManager em = PersistenceManager.getEntityManager();
		Query query = em.createQuery("SELECT u FROM User AS u WHERE u.email = :email AND u.isGoogleUser = 1");
		query.setParameter("email", email);
		List results = query.getResultList();
		if(results.isEmpty()){
			return null;
		}else{
			return (User)results.get(0);
		}
	}
}
