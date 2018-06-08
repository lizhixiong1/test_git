package com.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.user.dto.User;
import com.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/getUserList")
	public String getUserList(ModelMap map){
		map.put("userList", userService.getUserList());
		return "userList";
	}
	
	@RequestMapping("/delUserByIds")
	@ResponseBody
	public int delUserByIds(@RequestParam("userIds") List<Integer> userIds) {
		int i = userService.delUserByIds(userIds);
		if(i>0) {
			return 1;
		}
		return 0;
	}
	
	@RequestMapping("toAddUser")
	public String toAddUser() {
		return "addUser";
	}
	
	@RequestMapping("addUser")
	public String addUser(User user) {
		userService.addUser(user);
		return "redirect:/getUserList";
	}
	
	@RequestMapping("toUpdUser/{id}")
	public String toUpdUser(@PathVariable("id") Integer id,ModelMap map) {
		User user = userService.getUserById(id);
		map.put("user", user);
		return "updateUser";
	}
	
	@RequestMapping("updateUser")
	public String updateUser(User user) {
		userService.updateUserById(user);
		return "redirect:/getUserList";
	}
	
}
