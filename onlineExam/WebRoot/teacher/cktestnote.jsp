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
    
    <title>考试记录</title>
    
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
		<strong>考试记录：</strong>
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td>考试名称</td>
   				<td>开考时间</td>
				<td>交卷时间</td>
				<td>成绩</td>
				<td>操作</td>
				
   			</tr>
   			<s:iterator value="testNotes" var="tn">
   			<tr>
   				<td><s:property value="#tn.tname"/></td>
   				<td><s:property value="#tn.stime"/></td>
				<td><s:property value="#tn.etime"/></td>
				<td><s:property value="#tn.score"/></td>
				<td><a href="${pageContext.request.contextPath }/student_ckAnswerState.action?tnid=<s:property value="#tn.tnid"/>">答题情况</a></td>
   			</tr>
   			</s:iterator>
   		</table>
   		</div>
  	</div>
  </body>
</html>
