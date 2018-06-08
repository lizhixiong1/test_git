package com.user.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author Administrator
 *
 */
public class User {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private int age;
	private String name;
	private String dept;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	@Override
	public String toString() {
		return "User [age=" + age + ", name=" + name + ", dept=" + dept + ", birthday=" + birthday + "]";
	}
	
	
}
