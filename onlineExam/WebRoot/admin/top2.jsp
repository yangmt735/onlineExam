<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/top2.css">
	<script type="text/javascript">
		history.go(1);
		function check(){
			window.top.location.href = "${pageContext.request.contextPath}/admin_sessionDestory.action";
		}
	</script>
</head>

<body>
    <div class="div1">
    	<span>当前用户：<s:property value="#session.existAdmin.username" /></span>
    </div>
    <div class="div2">
    	<button class="button1" onclick="check()">退出系统</button>
    </div>
</body>
</html>
