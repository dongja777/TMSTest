package com.ubse.user.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport {
	
	private static final long serialVersionUID = 6286095273684670746L;

	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = (Map<String, Object>) context.getSession();
		if (session.get("user") != null) {
			session.remove("user");
		}
		context.setSession(session);
		
		return SUCCESS;
		
	}

}
