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
		 
		 function checkForm(){
			if(checkPhone() && checkEmail()){
				return true;
			}else{
				return false;
			}
		 }
	</script>
  </head>
  
  <body>
  	<div class="divtitle">
		<strong>完善学生信息:</strong>
    </div>
  	<div id="div1">
   		<form id="form1" action="${pageContext.request.contextPath }/student_wsStudentSX.action" method="post" target="mainFrame" onsubmit="return checkForm()">
   			<table>
   				<tr>
   					<td style="text-align:right;">学号:</td>
   					<td><input id="sid" type="text" readonly="readonly" name="sid" value="<s:property value="stu.sid"/>"/></td>
   					<td style="text-align:left;"><span id="sidspan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">姓名:</td>
   					<td><input id="name" type="text" readonly="readonly" name="name" value="<s:property value="stu.name"/>"></td>
   					<td style="text-align:left;"><span id="namespan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">电话:</td>
   					<td><input id="phone" type="text" name="phone"  value="<s:property value="stu.phone"/>" onblur="checkPhone()"/></td>
   					<td style="text-align:left;"><span id="phonespan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">邮箱:</td>
   					<td><input id="email" type="text" name="email" value="<s:property value="stu.email"/>" onblur="checkEmail()"/></td>
   					<td style="text-align:left;"><span id="emailspan"></span></td>
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
