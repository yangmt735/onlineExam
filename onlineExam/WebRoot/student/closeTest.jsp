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
	<link rel="stylesheet" type="text/css" href="./css/testend.css">
	<style type="text/css">
		#div2{
			margin:0 0 0 200px;
			padding:0px;
			width:500px;
			height:400px;
		
		}
	</style>
  </head>
  
  <body>
    <div id="div1">
  	  <div id="div2">
   		<div id="div3">
   			<STRONG>考场为关闭状态，无法进行考试！</STRONG>
   		</div>
   	 </div>
  	</div>
  </body>
</html>
