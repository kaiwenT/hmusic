package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.User;

public interface UserService {

	public void add(User user);
	
	public void update(User user);
	
	public void delete(Integer id);
	
	public User findByID(Integer id);
	
	public List<User> findAll();
}
