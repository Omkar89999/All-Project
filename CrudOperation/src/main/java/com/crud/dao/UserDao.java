package com.crud.dao;

import com.crud.entity.User;

public interface UserDao {
	
	public int saveUser(User user);
	
	public User loginUser(String email,String pass);
	
	

}
