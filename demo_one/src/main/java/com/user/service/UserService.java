package com.user.service;

import java.util.List;

import com.user.dto.User;

public interface UserService {
	public List<User> getUserList();

	public int delUserByIds(List<Integer> userIds);

	public void addUser(User user);

	public User getUserById(Integer id);

	public void updateUserById(User user);
}
