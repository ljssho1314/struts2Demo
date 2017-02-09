package com.ljs.Action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.ljs.Model.User;

public class PersonAction {
	
	private String uname;
	private String upass;
	private String agree;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getAgree() {
		return agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}

	
	
	@Override
	public String toString() {
		return "PersonAction [uname=" + uname + ", upass=" + upass + ", agree=" + agree + "]";
	}

	public String sayLoveyou() throws IOException
	{
		ServletActionContext.getResponse().getWriter().write("’‚ «person  saylove");
		System.out.println(toString());
		return null;
	}
	
	
}
