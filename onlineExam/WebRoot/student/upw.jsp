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
    
    <title>My JSP 'upw.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/student.css">

	<script type="text/javascript" src="./js/check.js"></script>
	<script type="text/javascript">
		function checkForm(pw1){
			if(checkPW(pw1) && checkNPW() && checkQRPW()){
				return true;
			}else{
				return false;
			}
		}
	</script>
  </head>
  
  <body>
  	<div class="divtitle">
		<strong>修改密码:</strong>
    </div>
  	<div id="div1">
   		<form id="form1" action="${pageContext.request.contextPath }/student_updatePW.action?sid=<s:property value="#session.existStudent.sid"/>" method="post" target="mainFrame" onsubmit="return checkForm('<s:property value="#session.existStudent.password" />')">
   			<table>
   				<tr>
   					<td style="text-align:right;">原密码:</td>
   					<td><input id="pw" type="password" /></td>
   					<td style="text-align:left;"><span id="pwspan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">新密码:</td>
   					<td><input id="npw" name="npw" type="password" onblur="checkNPW()"/></td>
   					<td style="text-align:left;"><span id="npwspan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">确认密码:</td>
   					<td><input id="qrpw" name="qrpw" type="password" onblur="checkQRPW()"/></td>
   					<td style="text-align:left;"><span id="qrspan"></span></td>
   				</tr>
   				<tr>
   					<td colspan="3" class="btn">
   						<input type="submit" value="提交"/>
                        <input type="reset" value="重置"/>
   					</td>
   				</tr>
   			</table>
   		</form>
  	</div>
  </body>
</html>
