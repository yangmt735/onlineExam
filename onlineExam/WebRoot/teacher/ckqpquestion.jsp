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
		<strong>查看试卷中的试题：</strong>	
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td style="width:70px">题号</td>
   				<td style="width:620px;">试题内容</td>
				<td style="width:100px">试题范围</td>
				<td style="width:100">试题难度</td>
				<td style="width: 100px">试题编号</td>
			</tr>
   			<s:iterator value="listqpq" var="qpq">
   			  <tr>
   			  	<td><s:property value="#qpq.num"/></td>
   			  	<td style="text-align: left;"><s:property value="#qpq.question.	qcontent"/></td>
   			  	<td><s:property value="#qpq.question.qscope"/></td>
   			  	<td><s:property value="#qpq.question.qdifficulty"/></td>
   			  	<td><s:property value="#qpq.question.qid"/></td>
   			  </tr>
   			</s:iterator>
   		</table>
   		
   		</div>
  	</div>
  </body>
</html>
