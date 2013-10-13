package com.ubse.user.action;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ubse.user.User;
import com.ubse.user.UserDao;

public class EditAccountAction extends ActionSupport {
	
	private Log log = LogFactory.getLog(EditAccountAction.class);
	
	private UserDao dao = UserDao.getInstance();
	
	private String name;
	private String mobile;
	private String passwd;
	private String email;
	
	public String execute() throws Exception {
		System.out.println(email);
		System.out.println(name);
		System.out.println(passwd);
		System.out.println(mobile);
		
		User user = new User();
		user.setName(getName());
		user.setEmail(email);
		user.setMobile(getMobile());
		user.setPasswd(passwd);
		dao.modify(user);
		
		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}