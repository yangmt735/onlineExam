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
    
    <title>开始考试</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/startest.css">
	<script type="text/javascript" src="./js/startest.js"></script>
  </head>
  
  <body onload="check1(<s:property value="qp.time"/>);">
  <div id="div1">
  	<div id="div1_2">
  	
  	  <div id="div2">
  	  <table style="font-size: 12px; margin: auto;">
  	  	<tr>
  	  		<td style="text-align: center;" colspan="2"><span id="span2" lang="<s:property value="tn.tnid"/>"><s:property value="tn.tname"/></span></td>
  	  	</tr>
  		<tr>
  			<td style="text-align: center;" colspan="2">考生信息</td>
  		</tr>
  		<tr>
  			<td style="text-align: right;">学号：</td>
  			<td style="text-align: left;"><s:property value="stu.sid"/></td>
  		</tr>
  		<tr>
  			<td style="text-align: right;">姓名：</td>
  			<td style="text-align: left;"><s:property value="stu.name"/></td>
  		</tr>
  		<tr>
  			<td style="text-align: center;" colspan="2">距离考试结束还有:</td>
  		</tr>
  		<tr>
  			<td style="text-align: center;" colspan="2"><span id="span1"></span></td>
  		</tr>
  		<tr><td style="text-align: center;" colspan="2"><input class="button" type="button" size="100px;" value="交&nbsp;&nbsp;&nbsp;&nbsp;卷" onclick="check()"/></td></tr>
  	</table>
   	 </div>
   	 <div id="div3">
   	 	<s:if test="listxzqpq != null">
			<span>一、单选题</span><br/>
			<s:iterator value="listxzqpq" var="qpq">	
				<span><s:property value="#qpq.num"/>、<s:property value="#qpq.question.qcontent"/></span><br/>
				<input name="<s:property value="#qpq.question.qid"/>" type="radio" value="<s:property value="#qpq.question.aoption"/>" onblur="checkSubmit(this)">A&nbsp;&nbsp;<s:property value="#qpq.question.aoption"/><br/>
				<input name="<s:property value="#qpq.question.qid"/>" type="radio" value="<s:property value="#qpq.question.boption"/>" onblur="checkSubmit(this)">B&nbsp;&nbsp;<s:property value="#qpq.question.boption"/><br/>
				<input name="<s:property value="#qpq.question.qid"/>" type="radio" value="<s:property value="#qpq.question.coption"/>" onblur="checkSubmit(this)">C&nbsp;&nbsp;<s:property value="#qpq.question.coption"/><br/>
				<input name="<s:property value="#qpq.question.qid"/>" type="radio" value="<s:property value="#qpq.question.doption"/>" onblur="checkSubmit(this)">D&nbsp;&nbsp;<s:property value="#qpq.question.doption"/><br/>
			</s:iterator>
	   		<br/>
   		</s:if>
   		<s:if test="listpdqpq != null">
			<span>二、判断题</span><br/>
	   		<s:iterator value="listpdqpq" var="qpq">
	   			<span><s:property value="#qpq.num"/>、<s:property value="#qpq.question.qcontent"/></span><br/>
	   			<input name="<s:property value="#qpq.question.qid"/>" type="radio" value="对" onblur="checkSubmit(this)"/>对<br/>
	   			<input name="<s:property value="#qpq.question.qid"/>" type="radio" value="错" onblur="checkSubmit(this)"/>错<br/>
	   		</s:iterator>
			<br/>
		</s:if>
		<s:if test="listtkqpq != null">
		<span>三、读程序题</span><br/>
   		<s:iterator value="listtkqpq" var="qpq">
   			<spam><s:property value="#qpq.num"/>、</spam><br/>
   			<textarea readonly="readonly" style="resize:none; overflow-y:auto" cols="90" rows="8"><s:property value="#qpq.question.qcontent"/></textarea><br/>
   			请输入结果:<input name="<s:property value="#qpq.question.qid"/>" type="text" onblur="checkSubmit(this)"/><br/>
   		</s:iterator>
   		</s:if>
   	 </div>
   	</div>
</div>
   
  </body>
</html>
