package com.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.user.dto.User;

public interface UserDao {
	public List<User> getUserList();
	public int delUserByIds(@Param("userIds")List<Integer> userIds);
	public void addUser(User user);
	public User getUserById(Integer id);
	public void updateUserById(User user);
}
