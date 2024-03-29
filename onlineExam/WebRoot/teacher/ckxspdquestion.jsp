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
	<link rel="stylesheet" type="text/css" href="./css/st.css">
  </head>
  
  <body>
	<div class="divtitle">
		<strong>查看相似试题：</strong>	
    </div>
    <div class="divtitle2">
    	<form action="${pageContext.request.contextPath }/question_addQuestionPDSX.action?qtid=2&tid=<s:property value="#session.existTeacher.tid" />" target="mainFrame" method="post">
    		<table style="display: none">
    			<tr>
    				<td style="text-align: right; width: 80px;">题目</td>
    				<td style="text-align: left;">
    					<textarea id="qcontent" name="qcontent" style="resize:none; overflow-y:scroll" cols="40" rows="4"><s:property value="question.qcontent"/></textarea>
    				</td>
    			</tr>
    			<tr>
    				<td style="text-align: right; width: 80px;">选项A</td>
    				<td style="text-align: left;">
    					<input id="aoption" name="aoption" size="80px" type="text" value="<s:property value="question.aoption"/>"/>
    				</td>
    			</tr>
    			<tr>
    				<td style="text-align: right; width: 80px;">选项B</td>
    				<td style="text-align: left;">
    					<input id="boption" name="boption" size="80px" type="text" value="<s:property value="question.boption"/>"/>
    				</td>
    			</tr>
    			<tr>
    				<td style="text-align: right; width: 80px;">选项C</td>
    				<td style="text-align: left;">
    					<input id="coption" name="coption" size="80px" type="text" value="<s:property value="question.coption"/>"/>
    				</td>
    			</tr>
    			<tr>
    				<td style="text-align: right; width: 80px;">选项D</td>
    				<td style="text-align: left;">
    					<input id="doption" name="doption" size="80px" type="text" value="<s:property value="question.doption"/>"/>
    				</td>
    			</tr>
    			<tr>
   					<td style="text-align: right; width: 80px;">正确答案</td>
   					<td style="text-align: left;">
   						<input id="qanswer" name="qanswer" size="80px" type="text" value="<s:property value="question.qanswer"/>"/>
   					</td>
   				</tr>
   				<tr>
   					<td style="text-align: right; width: 80px;">试题范围</td>
   					<td style="text-align: left;">
						<input id="qscope" name="qscope" type="text" value="<s:property value="question.qscope"/>"/>
   					</td>
   				</tr>
   				<tr>
   					<td style="text-align: right; width: 80px;">试题难度</td>
   					<td style="text-align: left;">
						<input id="qdifficulty" name="qdifficulty" type="text" value="<s:property value="question.qdifficulty"/>"/>
   					</td>
   				</tr>
   				<tr>
   					<td style="text-align: right; width: 80px;">关键字</td>
   					<td style="text-align: left;">
   						<input id="oword" name="oword" type="text" value="<s:property value="question.oword"/>"/>
   					</td>
   				</tr>
   				<tr>
   					<td style="text-align: right; width: 80px;">试题解析</td>
   					<td style="text-align: left;">
   						<textarea id="qanalysis" name="qanalysis" style="resize:none; overflow-y:scroll" cols="40" rows="4">
   							<s:property value="question.qanalysis"/>
   						</textarea>
   					</td>
   				</tr>
    		</table>
    		<input type="submit" value="确定添加试题"/>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/question_addQuestionPD.action">重新添加试题</a>
    	</form>
    	
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td style="width: 70px">试题编号</td>
   				<td style="width:620px">试题内容</td>
   				<td>试题答案</td>
			</tr>
   			<s:iterator value="listxs" var="q">
   			  <tr>
   			  	<td><s:property value="#q.qid"/></td>
   			  	<td><s:property value="#q.qcontent"/></td>
   			  	<td><s:property value="#q.qanswer"/></td>
   			  </tr>
   			</s:iterator>
   		</table>
   		
   		</div>
  	</div>
  </body>
</html>
