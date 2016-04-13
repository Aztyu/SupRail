package com.supinfo.suprail.interfaces;

import com.supinfo.suprail.entity.User;

public interface IUserDao {
	public void createUser(User user);
    public User getUser();
}
