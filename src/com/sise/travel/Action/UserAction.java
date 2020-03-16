package com.sise.travel.Action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.travel.po.User;
import com.sise.travel.service.UserService;
@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport{
	@Resource private UserService userService;
	private String email;
	private List<User> users;
	private User user;
	public UserAction(){}
	public List<User> getUsers() {
		return users;
	}
	public User getUser() {
		return user;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public String addUser() {
		userService.addUser(user);
		return "add";
	}
	public String loginUser() {
		users = userService.FindEmaliUsers(user.getEmail());
		if(users.isEmpty()||!user.getPassword().equals(users.get(0).getPassword())){
			return "empty";
		}
		return SUCCESS;
	}

}
