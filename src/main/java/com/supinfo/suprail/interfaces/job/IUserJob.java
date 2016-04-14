package com.supinfo.suprail.interfaces.job;

import com.supinfo.suprail.entity.User;

public interface IUserJob {
    public User getUser();
	public void createUser(User user, String password);
}
