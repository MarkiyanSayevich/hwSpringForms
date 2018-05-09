package com.spring.service;

import java.util.List;

import com.spring.entity.User;

public interface UserService {

	void saveUser(User user);
	
	User findUserById(int id);
	
	List<User> findAllUsers();
	
	User findUserByEmail(String email);
	
	void deleteById(int id);
}
