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
    
    <title>查看试卷</title>
    
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
   				<td>试题内容</td>
   				<td style="width:70px;">试题范围</td>
				<td style="width:70px;">试题难度</td>
				<td style="width:100px;">考查知识点</td>
				<td style="width:70px;">答题情况</td>
				<td style="width:70px;">试题详情</td>
   			</tr>
   			<s:iterator value="answerStatesxz" var="a">
   			<tr>
   				<td style="text-align: left;"><s:property value="#a.question.qcontent"/></td>
   				<td><s:property value="#a.question.qscope"/></td>
				<td><s:property value="#a.question.qdifficulty"/></td>
				<td><s:property value="#a.question.oword"/></td>
				<s:if test="#a.state == 1">
					<td>正确</td>
				</s:if>
				<s:if test="#a.state == 2">
					<td>错误</td>
				</s:if>
				<s:if test="#a.state == 3">
					<td>错误</td>
				</s:if>
				<td><a href="${pageContext.request.contextPath }/question_ckQuestionXX.action?qid=<s:property value="#a.question.qid"/>">详情</a></td>
   			</tr>
   			</s:iterator>
   			<s:iterator value="answerStatespd" var="a">
   			<tr>
   				<td style="text-align: left;"><s:property value="#a.question.qcontent"/></td>
   				<td><s:property value="#a.question.qscope"/></td>
				<td><s:property value="#a.question.qdifficulty"/></td>
				<td><s:property value="#a.question.oword"/></td>
				<s:if test="#a.state == 1">
					<td>正确</td>
				</s:if>
				<s:if test="#a.state == 2">
					<td>错误</td>
				</s:if>
				<s:if test="#a.state == 3">
					<td>错误</td>
				</s:if>
				<td><a href="${pageContext.request.contextPath }/question_ckQuestionXX.action?qid=<s:property value="#a.question.qid"/>">详情</a></td>
   			</tr>
   			</s:iterator>
   			<s:iterator value="answerStatestk" var="a">
   			<tr>
   				<td style="text-align: left;"><s:property value="#a.question.qcontent"/></td>
   				<td><s:property value="#a.question.qscope"/></td>
				<td><s:property value="#a.question.qdifficulty"/></td>
				<td><s:property value="#a.question.oword"/></td>
				<s:if test="#a.state == 1">
					<td>正确</td>
				</s:if>
				<s:if test="#a.state == 2">
					<td>错误</td>
				</s:if>
				<s:if test="#a.state == 3">
					<td>错误</td>
				</s:if>
				<td><a href="${pageContext.request.contextPath }/question_ckQuestionXX.action?qid=<s:property value="#a.question.qid"/>">详情</a></td>
   			</tr>
   			</s:iterator>
   		</table>
   		</div>
  	</div>
  </body>
</html>
