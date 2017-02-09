package com.ljs.Action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.ljs.Model.Tag;
import com.ljs.Model.User;

public class ShowAction {
	
	private List<Tag> loves=new ArrayList<Tag>();
	private String name;
	private String sex;


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public List<Tag> getLoves() {
		return loves;
	}


	public void setLoves(List<Tag> loves) {
		this.loves = loves;
	}


	public String sayLoveyou() throws IOException
	{
		Tag t = new Tag();
		t.setLabel("lanqiu");
		t.setValue("1");
		Tag t1 = new Tag();
		t1.setLabel("zuqiu");
		t1.setValue("2");
		Tag t2 = new Tag();
		t2.setLabel("bangqiu");
		t2.setValue("3");
//		loves = tagService.getAllLoves();//select label,name from tag 
		loves.add(t);
		loves.add(t1);
		loves.add(t2);
		setName("shiyuran");
		setSex("yao");
		return "login2";
	}
	
}
