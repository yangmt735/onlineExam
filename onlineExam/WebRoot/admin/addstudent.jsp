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
			var sidspan = document.getElementById("sidspan");
			if(checkName() && checkPassword() && checkPhone() && checkBJ() && sidspan.innerText == "* 该学号可以使用"){
				return true;
			}else{
				return false;
			}
		 }
	</script>
  </head>
  
  <body>
  	<div class="divtitle">
		<strong>添加学生:</strong>
    </div>
  	<div id="div1">
   		<form id="form1" action="${pageContext.request.contextPath }/student_addStudentSX.action" method="post" target="mainFrame" onsubmit="return checkForm()">
   			<table>
   				<tr>
   					<td style="text-align:right;">学号:</td>
   					<td><input id="sid" type="text" name="sid" onblur="checkSid()"/></td>
   					<td style="text-align:left;"><span id="sidspan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">姓名:</td>
   					<td><input id="name" type="text" name="name" onblur="checkName()"/></td>
   					<td style="text-align:left;"><span id="namespan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">密码:</td>
   					<td><input id="password" type="text" name="password" onblur="checkPassword()"/></td>
   					<td style="text-align:left;"><span id="passwordspan"></span></td>
   				</tr>
   				<tr>
   					<td style="text-align:right;">电话:</td>
   					<td><input id="phone" type="text" name="phone" onblur="checkPhone()"/></td>
   					<td style="text-align:left;"><span id="phonespan"></span></td>
   				</tr>
   				
   				<tr>
   					<td style="text-align:right;">班级:</td>
   					<td>
   						<select name="bjid" id="bjname" onblur="checkBJ()">
   							<option value="----请选择班级----">----请选择班级----</option>
   							<s:iterator var ="s" value="listbj" >
   							<option value="<s:property value="#s.bjid"/>"><s:property value="#s.bjname"/></option>
   							</s:iterator>
   						</select>
   					</td>
   					<td style="text-align:left;"><span id="bjnamespan"></span></td>
   				</tr>
   				<tr>
   					<td colspan="3" class="btn">
   						<input style="width:100px; height:30px" type="submit" value="提交"/>
                        <input style="width:100px; height:30px" type="reset" value="重置"/>
   					</td>
   				</tr>
   			</table>
   		</form>
   		
  	</div>
  </body>
</html>
