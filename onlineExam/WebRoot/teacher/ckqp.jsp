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
		<strong>查看试卷：</strong>
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td>试卷编号</td>
   				<td>出卷日期</td>
				<td>考试时长</td>
				<td>查看试卷</td>
				
   			</tr>
   			<s:iterator value="list" var="qp">
   			<tr>
   				<td><s:property value="#qp.qpid"/></td>
   				<td><s:property value="#qp.qpdate"/></td>
				<td><s:property value="#qp.time"/></td>
				<td><a href="${pageContext.request.contextPath }/questionPaper_ckQPQuestion.action?qpid=<s:property value="#qp.qpid"/>">查看试卷</a></td>
   			</tr>
   			</s:iterator>
   		</table>
   		</div>
  	</div>
  </body>
</html>
