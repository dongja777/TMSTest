package com.ubse.user.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.catalina.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ubse.user.User;
import com.ubse.user.UserDao;

public class getAllUser extends ActionSupport {
	
	private UserDao dao = UserDao.getInstance();
	private int size = 0;
	private ArrayList<User> user;
	private String name;
	private String email;
	private String mobile;
	
	public String execute() throws Exception {
		System.out.println("21");
		user = new ArrayList<User>();
		user = dao.getAllUsers();
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = (Map<String, Object>) context.getSession();		
		session.put("user", user);
		context.setSession(session);			
		return SUCCESS;
		
	} 

	public ArrayList<User> getUser() {
		return user;
	}

	public void setUser(ArrayList<User> user) {
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public List<User> setList()
	{
		user = new ArrayList<User>();
		return this.user= dao.getAllUsers();
	}
	
	public List<User> getList()
	{
		return user;
	}
	
	public int getSize()
	{
		return dao.getAllUsers().size();
	}
	
	public String getName(int i)
	{
		return dao.getAllUsers().get(i).getName();
	}
	
	public String getEmail(int i)
	{
		return dao.getAllUsers().get(i).getEmail();
	}
	
	public String getMobile(int i)
	{
		return dao.getAllUsers().get(i).getMobile();
	}
}
