<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>模拟表单</title>
</head>
<body>
<s:form action="addUser">
	<s:textfield name="yhbh" label="用户编号"></s:textfield>
	<s:checkbox label="是否同意" name="agree"></s:checkbox>
	<!-- 
	<s:checkboxlist label="字母" name="zimu" list="#{1:'a',2:'b',3:'c'}" listKey="key" listValue="value"></s:checkboxlist>
	
	 <s:checkboxlist label="字母" name="zimu" list="zimus" listKey="value" listValue="label"></s:checkboxlist>
	  -->
  	 <s:checkboxlist label="字母" name="zimu" list="zimumaps" listKey="key" listValue="value"></s:checkboxlist>
	  
	 <!-- 
	<s:checkboxlist name="loves" list="#{1:'lanqiu',2:'zuqiu' }" label="爱好" listKey="key" listValue="value"></s:checkboxlist>
	 <s:checkboxlist name="loves" list="aihaos" label="爱好" listKey="value" listValue="label"></s:checkboxlist>
	-->
	 <s:checkboxlist name="loves" list="aihaomaps" label="爱好" listKey="key" listValue="value"></s:checkboxlist>
	
	<s:radio name="level" list="#{1:'one user',2:'two user'}" listKey="key" listValue="value"></s:radio>
	
	<s:select name="aihaoselect" list="aihaomaps" listKey="key" listValue="value" headerValue="----请选择----" headerKey="0"></s:select>
	
	<s:select name="aihaoselectopt" list="{}" headerValue="----请选择----" headerKey="0">
		<s:optgroup label="aihao" list="aihaomaps" listKey="key" listValue="value"></s:optgroup>
		<s:optgroup label="zimu" list="zimumaps" listKey="key" listValue="value"></s:optgroup>		
	</s:select>

	<s:iterator value="aihaomaps" status="a" id="n">
		<s:property value="#n.key"/><s:property value="#a.getIndex()"/><s:property value="#a.getCount()"/><br>
	</s:iterator>


	<s:set name="li" value="{'lll','kkk'}"></s:set>
	haha:<s:property value="#li[0]"/>mmmmmmmmmmmchanglaing:<s:property value="@com.ljs.Model.Tag@getStr()"/>
	
	<s:set name="a" value="aihaos.{value}"></s:set>
	<s:property value="#a"/>
	<s:submit value="提交" type="submit"></s:submit>
</s:form>
</body>
</html>