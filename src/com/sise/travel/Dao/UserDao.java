package com.sise.travel.Dao;

import java.util.List;

import com.sise.travel.po.User;


public interface UserDao {
	public List<User> getUser(String email);
	public void saveUser(User user);
	public User findUser(Integer id);
}
