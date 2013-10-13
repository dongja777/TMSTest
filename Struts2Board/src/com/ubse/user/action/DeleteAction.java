package com.ubse.user.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ubse.user.User;
import com.ubse.user.UserDao;

public class DeleteAction extends ActionSupport {

	private UserDao dao = UserDao.getInstance();
	private User user;
	private String email;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public String execute() throws Exception {
		System.out.println("삭제좀하자");
		System.out.println(email);
		User str=dao.getUserByEmail(email);
		System.out.println(str.getEmail());
		dao.bye(str);		
		return SUCCESS;
		
	}

}
