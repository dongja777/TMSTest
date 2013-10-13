package com.ubse.user.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import sun.util.logging.resources.logging;

import com.opensymphony.xwork2.ActionSupport;
import com.ubse.user.User;
import com.ubse.user.UserDao;

public class SignUpAction extends ActionSupport {
	private Log log = LogFactory.getLog(SignUpAction.class);
	
	
	
	private UserDao dao = UserDao.getInstance();
	
	private String name;
	private String email;
	private String passwd;
	private String confirm;
	private String mobile;
	
	public String execute() throws Exception {
		System.out.println("signupaction진입");
		User user = new User();
		user.setName(getName());
		user.setEmail(getEmail());
		user.setMobile(getMobile());
		user.setPasswd(getPasswd());
		
		int chk = dao.insert(user);
		if (chk < 1) {
			System.out.println("검사");
			System.out.println(user.getName());
			return INPUT;
		}

		return SUCCESS;

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getConfirm() {
		return confirm;
	}
	
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}