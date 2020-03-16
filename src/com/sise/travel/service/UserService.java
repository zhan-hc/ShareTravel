package com.sise.travel.service;

import java.util.List;

import com.sise.travel.po.User;


public interface UserService {
	public List<User> FindEmaliUsers(String email);
	public void addUser(User user);
	public void findUser(Integer id);
}
