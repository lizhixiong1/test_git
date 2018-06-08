package com.user.dto;

public class Hobby {
	private Integer id;
	private String hName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	@Override
	public String toString() {
		return "Hobby [id=" + id + ", hName=" + hName + "]";
	}
	
	
	
	
}
