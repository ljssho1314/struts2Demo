<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="addUser">
	<!-- 
	<s:textfield name="user.name" label="用户名" style="border:1px solid red"></s:textfield>
	<s:password name="use.pass" label="用户密码" style="border:1px solid red" ></s:password>
	<s:checkbox name="agree" fieldValue="1" label="请同意条款"></s:checkbox>
	<s:checkboxlist name="aihao" list="#{1:'abc',2:'mmm'}" listKey="key" listValue="value"></s:checkboxlist>
	
	<s:textfield name="name" label="name"></s:textfield> 
	<s:textfield name="sex" label="sex"></s:textfield>
	<s:radio name="sex" list="#{1:'nan',2:'yao',3:'nv'}" listKey="key" listValue="value"></s:radio>
	
	-->
<s:checkboxlist name="aihao" list="loves" listKey="value" listValue="label"></s:checkboxlist>
	<s:radio name="sex" list="loves" listKey="value" listValue="label"></s:radio>
	<s:submit type="button"></s:submit>
	 
</s:form>
</body>
</html>