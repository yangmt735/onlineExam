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
			var bj = document.getElementById("bj").value;
			var bjspan = document.getElementById("bjspan");
			if(bj ==""){
				bjspan.innerHTML = "* 班级名称不能为空".fontcolor("red").fontsize("2px");
				return false;
			}else if("* 班级名已存在" == bjspan.innerText && bjspan.innerText !=""){
				return false;
			}else{
				return true;
			}	
		}
	</script>
  </head>
  
  <body>
  	<div class="divtitle">
		<strong>添加班级:</strong>
    </div>
  	<div id="div1">
   		<form id="form1" action="${pageContext.request.contextPath }/bj_addbjsx.action?tid=<s:property value="#session.existTeacher.tid"/>" method="post" target="mainFrame" onsubmit="return checkForm()">
   			<table>
   				<tr>
   					<td style="text-align:right;">班级名称:</td>
   					<td><input id="bj" type="text" name="bjname" onblur="checkbjname()"/></td>
   					<td style="text-align:left;"><span id="bjspan"></span></td>
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
