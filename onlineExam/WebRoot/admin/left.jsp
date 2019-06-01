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
    
    <title>admin 'left.jsp' starting page</title>
    
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
            <li><a href="${pageContext.request.contextPath }/question_ckAdminQuestionAndXZQT.action" target="mainFrame">查找试题</a></li>
            <li><a href="${pageContext.request.contextPath }/question_addAdminQuestionXZ.action" target="mainFrame">添加选择题</a></li>
        	<li><a href="${pageContext.request.contextPath }/question_addAdminQuestionPD.action" target="mainFrame">添加判断题</a></li>
        	<li><a href="${pageContext.request.contextPath }/question_addAdminQuestionTK.action" target="mainFrame">添加读程序题</a></li>
        </ul>
    </div>
   
	<div id="div2_2">
        <a id ="a1_2"  href="javascript:void(0)" onclick="list(this)">试卷管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/questionPaper_ckAdminQuestionPaper.action" target="mainFrame">查看试卷</a></li>
            <li><a href="${pageContext.request.contextPath }/questionPaper_szAdminQuestionPaper.action" target="mainFrame">添加试卷</a></li>
        </ul>
    </div>
    
	<div id="div2_3">
    	 <a id ="a1_3"  href="javascript:void(0)" onclick="list(this)">班级管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/bj_ckbjAdmin.action" target="mainFrame">查看班级</a></li>
        </ul>
    </div>
    <div id="div2_4">
    	 <a id ="a1_4"  href="javascript:void(0)" onclick="list(this)">考试管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/testControl_szTest.action" target="mainFrame">设置考试</a></li>
            <li><a href="${pageContext.request.contextPath }/testControl_openTest.action" target="mainFrame">开启考场</a></li>
            <li><a href="${pageContext.request.contextPath }/testControl_closeTest.action" target="mainFrame">关闭考场</a></li>
        </ul>
    </div>
    <div id="div2_7">
    	 <a id ="a1_7"  href="javascript:void(0)" onclick="list(this)">教师管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/teacher_ckAllTeacherAdmin.action" target="mainFrame">查看教师</a></li>
            <li><a href="${pageContext.request.contextPath }/teacher_addTeacherAdmin.action" target="mainFrame">添加教师</a></li>
        </ul>
    </div>
    <div id="div2_5">
    	 <a id ="a1_5"  href="javascript:void(0)" onclick="list(this)">学生管理</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/student_ckAllStudentAdmin.action?page=1" target="mainFrame">查看学生</a></li>
            <li><a href="${pageContext.request.contextPath }/student_addStudentAdmin.action" target="mainFrame">添加学生</a></li>
        </ul>
    </div>
    <div id="div2_6">
    	 <a id ="a1_6"  href="javascript:void(0)" onclick="list(this)">我的信息</a>
        <ul>
            <li><a href="${pageContext.request.contextPath }/admin_ckxx.action" target="mainFrame">查看信息</a></li>
            <li><a href="${pageContext.request.contextPath }/admin_upw.action" target="mainFrame">修改密码</a></li>
        </ul>
    </div> 
  </div>   
</body>
</html>
