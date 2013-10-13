package com.ubse.mybatis;

import java.util.ArrayList;

import com.ubse.user.User;

public interface UserMapper {
	
	public int insert(User user);
	
	public User login(User user);
	
	public int modify(User user);
	
	public void changePasswd(User user);

	public void bye(User user);
	
	public ArrayList<User> getAllUsers();
	
	public User getUserByEmail(String email);
	
	public ArrayList<User> getUsersByKeyword(String keyword);
	
}