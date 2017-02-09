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
	
	
	<s:select name="s1" list="zimumaps" listKey="key" listValue="value" label="字母下拉框" headerValue="----请选择----" headerKey="0"></s:select>
	
	<s:select list="{}" headerValue="--请选择--" headerKey="0">
		<s:optgroup label="字母大区" list="zimumaps" listKey="key" listValue="value"></s:optgroup>
		<s:optgroup label="爱好大区" list="aihaomaps" listKey="key" listValue="value"></s:optgroup>	
	</s:select>
	
	<s:property value="yhbh"/><br>
	链接参数：<s:property value="#parameters.id"/><br>
	tag:<s:property value="tag.label"/><br>
	<s:set name="str" value="#parameters.id"></s:set><br>
	str:<s:property value="#request.req_str"/><br>
	<s:if test="#request.req_str=='abc'">
		等于abc<br>
	</s:if>
	<s:elseif test="#request.req_str=='bcd'">
		等于bcd<br>
	</s:elseif>
	<s:else>
		不等于<br>
	</s:else>
	
	<s:iterator value="aihaos" id="aihao" status="v">
		<s:property value="#aihao.label"/>&nbsp;<s:property value="#aihao.value"/>&nbsp;
		<s:property value="#v.getIndex()"/><br>
	</s:iterator>
	
	<%
		java.util.Date te= new java.util.Date();
		request.setAttribute("date",te);
		
		java.util.List ls = new java.util.ArrayList();
		ls.add("abc");
		ls.add("123");
		ls.add("ppp");
		java.util.Map map  = new java.util.HashMap();
		map.put("a", "abc");
		map.put("b", "123");
		map.put("c", "567");
		com.ljs.Model.Tag t = new com.ljs.Model.Tag();
		request.setAttribute("tag", t);
		request.setAttribute("ls", ls);
		request.setAttribute("maps", map);

	%>
	sadf:<s:date name="#request.date" format="yyyy-MM-dd hh:mm:ss"/>
	<br>
	<s:property value="#request.ls[1]"/><br>
	ppp在集合中存在吗：<s:property value="'ppp' not in #request.ls"/><br>
	<s:property value="#request.maps"/><br>
	maps:<s:property value='#request.maps["a"]'/><br>
	
	<s:set name="ls" value='#{"x":"a","y":"b","z":"c"}'></s:set>
	<s:property value="#ls"/>
	构造map：<s:property value="#ls[\"x\"]"/><br>
	静态变量值：<s:property value="@com.ljs.Model.Tag@str"/><br>
	静态方法值：<s:property value=""/>
	<s:property value="#request.tag.setLabel('nnn')"/>
	获得taglabel：<s:property value="#request.tag.getLabel()"/>
	<s:submit value="提交" type="submit"></s:submit>
</s:form>
</body>
</html>