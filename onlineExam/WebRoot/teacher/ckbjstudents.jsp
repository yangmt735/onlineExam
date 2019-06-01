<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ckbj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/ks.css">
  </head>
  
  <body>
	<div class="divtitle">
		<strong>查看学生：</strong>
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td>学号</td>
   				<td>姓名</td>
				<td>电话</td>
				<td>考试记录</td>
				<td>删除</td>
   			</tr>
   			<s:iterator var="s" value="liststu">
   			 <tr>
   				<td><s:property value="#s.sid"/></td>
		  		<td><s:property value="#s.name"/></td>
		  		<td><s:property value="#s.phone"/></td>
		  		<td><a href="${pageContext.request.contextPath}/student_ckTestNote.action?sid=<s:property value="#s.sid"/>">考试记录</a></td>
				<td><a href="${pageContext.request.contextPath}/bj_deleteBJStudent?sid=<s:property value="#s.sid"/>&bjid=<s:property value="bjid"/>">删除</a></td>
   			 </tr>
   			</s:iterator>
   		</table>
   		
   	 </div>
  	</div>
  </body>
</html>
