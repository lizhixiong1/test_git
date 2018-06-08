package com.user.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.UserDao;
import com.user.dto.User;
import com.user.service.UserService;

@Service
public class UserServiceImp implements UserService {
	
	@Autowired
	private UserDao userDao;
	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return userDao.getUserList();
	}
	@Override
	public int delUserByIds(List<Integer> userIds) {
		// TODO Auto-generated method stub
		return userDao.delUserByIds(userIds);
	}
	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}
	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		return userDao.getUserById(id);
	}
	@Override
	public void updateUserById(User user) {
		// TODO Auto-generated method stub
		userDao.updateUserById(user);
	}

}
