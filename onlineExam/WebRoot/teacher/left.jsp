<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/left.css">
	
	<script type="text/javascript" src="./js/left.js"></script>
  </head>
  
 <body>
  <div id="div1">
  	<div id="div2_1">
        <a id ="a1_1" href="javascript:void(0)" onclick="list(this)">题库管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/question_ckQuestionAndXZQT.action" target="mainFrame">查找试题</a></li>
            <li><a href="${pageContext.request.contextPath }/question_addQuestionXZ.action" target="mainFrame">添加选择题</a></li>
        	<li><a href="${pageContext.request.contextPath }/question_addQuestionPD.action" target="mainFrame">添加判断题</a></li>
        	<li><a href="${pageContext.request.contextPath }/question_addQuestionTK.action" target="mainFrame">添加读程序题</a></li>
        </ul>
    </div>
   
	<div id="div2_2">
        <a id ="a1_2"  href="javascript:void(0)" onclick="list(this)">试卷管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/questionPaper_ckQuestionPaper.action?tid=<s:property value="#session.existTeacher.tid" />" target="mainFrame">查看试卷</a></li>
            <li><a href="${pageContext.request.contextPath }/questionPaper_szQuestionPaper.action" target="mainFrame">添加试卷</a></li>
        </ul>
    </div>
    
	<div id="div2_3">
    	 <a id ="a1_3"  href="javascript:void(0)" onclick="list(this)">班级管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/bj_ckbj.action?tid=<s:property value="#session.existTeacher.tid" />" target="mainFrame">查看班级</a></li>
            <li><a href="${pageContext.request.contextPath }/bj_addbj.action" target="mainFrame">添加班级</a></li>
        </ul>
    </div>
    <div id="div2_5">
    	 <a id ="a1_5"  href="javascript:void(0)" onclick="list(this)">学生管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/student_ckAllStudent.action?tid=<s:property value="#session.existTeacher.tid" />&page=1" target="mainFrame">查看学生</a></li>
            <li><a href="${pageContext.request.contextPath }/student_addStudent.action?tid=<s:property value="#session.existTeacher.tid" />" target="mainFrame">添加学生</a></li>
        </ul>
    </div>
    <div id="div2_6">
    	 <a id ="a1_6"  href="javascript:void(0)" onclick="list(this)">我的信息</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/teacher_ckxx.action" target="mainFrame">查看信息</a></li>
            <li><a href="${pageContext.request.contextPath }/teacher_upw.action" target="mainFrame">修改密码</a></li>
        </ul>
    </div> 
  </div>   
</body>
</html>
