package com.jinlong.model;

import org.springframework.stereotype.Component;

public class T1User {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t1_user.id
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t1_user.name
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t1_user.tel
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    private String tel;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t1_user.admin
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    private String admin;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t1_user.password
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    private String password;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t1_user.id
     *
     * @return the value of t1_user.id
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    
    private String isLock;
    
    
    
    public String getIsLock() {
		return isLock;
	}

	public void setIsLock(String isLock) {
		this.isLock = isLock;
	}

	public Integer getId() {
        return id;
    }
    
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t1_user.id
     *
     * @param id the value for t1_user.id
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t1_user.name
     *
     * @return the value of t1_user.name
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t1_user.name
     *
     * @param name the value for t1_user.name
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t1_user.tel
     *
     * @return the value of t1_user.tel
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public String getTel() {
        return tel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t1_user.tel
     *
     * @param tel the value for t1_user.tel
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t1_user.admin
     *
     * @return the value of t1_user.admin
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public String getAdmin() {
        return admin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t1_user.admin
     *
     * @param admin the value for t1_user.admin
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public void setAdmin(String admin) {
        this.admin = admin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t1_user.password
     *
     * @return the value of t1_user.password
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t1_user.password
     *
     * @param password the value for t1_user.password
     *
     * @mbg.generated Tue Jan 30 21:27:03 CST 2018
     */
    public void setPassword(String password) {
        this.password = password;
    }
}