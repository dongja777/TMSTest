package com.ubse.user.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ubse.user.User;
import com.ubse.user.UserDao;

public class LoginAction extends ActionSupport {
	
	private UserDao dao = UserDao.getInstance();
	
	private String email;
	private String passwd;
	
	public String execute() throws Exception {
		System.out.println(email);
		//User user = new User();
		//user.setEmail(getEmail());
		//user.setPasswd(getPasswd());
		/*
		user = dao.login(user);
		
		if (user != null) {
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session = (Map<String, Object>) context.getSession();
			session.put("user", user);
			context.setSession(session);
			return SUCCESS;
		} else {
			return INPUT;
		}*/
		return SUCCESS;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}