package com.ljs.Action;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.ljs.Model.Tag;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import ognl.Ognl;

public class UserAction {
	
	
	private String yhbh;
	private String agree;
	private String[] zimu;
	private String[] loves;
	private String level;
	private Tag tag;
	private List<Tag> aihaos = new ArrayList<Tag>();
	private List<Tag> zimus = new ArrayList<Tag>();
	private Map<String,String> aihaomaps =  new HashMap<String,String>();
	private Map<String,String> zimumaps =  new HashMap<String,String>();

	public List<Tag> getAihaos() {
		return aihaos;
	}


	public void setAihaos(List<Tag> aihaos) {
		this.aihaos = aihaos;
	}


	public List<Tag> getZimus() {
		return zimus;
	}


	public void setZimus(List<Tag> zimus) {
		this.zimus = zimus;
	}


	public String getYhbh() {
		return yhbh;
	}


	public void setYhbh(String yhbh) {
		this.yhbh = yhbh;
	}


	public String getAgree() {
		return agree;
	}


	public void setAgree(String agree) {
		this.agree = agree;
	}


	public String[] getZimu() {
		return zimu;
	}


	public void setZimu(String[] zimu) {
		this.zimu = zimu;
	}


	public String[] getLoves() {
		return loves;
	}


	public void setLoves(String[] loves) {
		this.loves = loves;
	}


	public String getLevel() {
		return level;
	}


	public void setLevel(String level) {
		this.level = level;
	}
	

	public String addUser()
	{
		System.out.println(toString());
		return null;
	}



	public Map<String, String> getAihaomaps() {
		return aihaomaps;
	}


	public void setAihaomaps(Map<String, String> aihaomaps) {
		this.aihaomaps = aihaomaps;
	}


	public Map<String, String> getZimumaps() {
		return zimumaps;
	}


	public void setZimumaps(Map<String, String> zimumaps) {
		this.zimumaps = zimumaps;
	}


	@Override
	public String toString() {
		return "UserAction [yhbh=" + yhbh + ", agree=" + agree + ", zimu=" + Arrays.toString(zimu) + ", loves="
				+ Arrays.toString(loves) + ", level=" + level + "]";
	}
	
	
	public String showJapTagJsp()
	{
//		ValueStack v1 = ActionContext.getContext().getValueStack();
//		ValueStack v2 = ServletActionContext.getValueStack(ServletActionContext.getRequest());
//        ValueStack v3 = (ValueStack) ServletActionContext.getRequest().getAttribute("struts.valueStack");
//        String value = (String)Ognl.getValue("group.org.orgId", user);   
		tag = new Tag();
		tag.setLabel("ceshi");
		tag.setValue("01");
		Tag t1 = new Tag();
		t1.setLabel("zuqiu");
		t1.setValue("01");
		Tag t2 = new Tag();
		t2.setLabel("lanqiu");
		t2.setValue("02");
		Tag t3 = new Tag();
		t3.setLabel("bangqiu");
		t3.setValue("03");
		aihaos.add(t1);
		aihaos.add(t2);
		aihaos.add(t3);
		Tag t4 = new Tag();
		Tag t5 = new Tag();
		t4.setLabel("a");
		t4.setValue("a");
		t5.setLabel("b");
		t5.setValue("b");
		zimus.add(t4);
		zimus.add(t5);
		aihaomaps.put("01","zuqiu");
		aihaomaps.put("02","lanqiu");
		aihaomaps.put("03","baoqiu");
		zimumaps.put("x","x");
		zimumaps.put("y","y");
		zimumaps.put("z","z");
		yhbh="shihyuyran";
		ServletActionContext.getRequest().setAttribute("req_str","bcd");
		return "JapTagJsp";
	}


	public Tag getTag() {
		return tag;
	}


	public void setTag(Tag tag) {
		this.tag = tag;
	}

}
