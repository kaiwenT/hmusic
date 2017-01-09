package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.UserDao;
import com.hmusic.entity.User;
import com.hmusic.service.UserService;

@Service(value = "userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public void add(User user) {
		userDao.add(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public void delete(Integer id) {
		userDao.delete(id);
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public User findByID(Integer id) {
		return userDao.findByID(id);
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<User> findAll() {
		return userDao.findAll();
	}

}
