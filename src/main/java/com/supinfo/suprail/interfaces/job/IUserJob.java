package com.supinfo.suprail.interfaces.job;

import com.supinfo.suprail.entity.User;

public interface IUserJob {
    public User getUser(String login, String password);
	public void createUser(User user, String password);
}
