package com.supinfo.suprail.interfaces.dao;

import com.supinfo.suprail.entity.User;

public interface IUserDao {
	public void createUser(User user);
    public User getUser(String login, String password);
}
