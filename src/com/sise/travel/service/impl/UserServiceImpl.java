package com.sise.travel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.UserDao;
import com.sise.travel.po.User;
import com.sise.travel.service.UserService;


@Transactional(readOnly=false)
@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource private UserDao userDao;
	@Transactional(readOnly=true)
	
	public List<User> FindEmaliUsers(String email) {
		return userDao.getUser(email);
	}

	public void addUser(User user) {
		userDao.saveUser(user);
	}

	public void findUser(Integer id) {
		userDao.findUser(id);
	}

}
