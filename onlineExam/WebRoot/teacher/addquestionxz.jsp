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
	<link rel="stylesheet" type="text/css" href="./css/ks.css">
	<style type="text/css">
		table{
			padding:10px 0;
			border:1px solid #0d60bc;
			border-radius:5px;
		}
		td{
			margin-right:10px;
			padding:5px;
			/* border-bottom: 1px solid #F0F0F0; */
			border:none;
		}
	</style>
	<script type="text/javascript" src="./js/addquestion.js"></script>
	<script type="text/javascript">
		function checkForm(){
			var qanswer = document.getElementsByName("qanswer");
			var qanswerspan = document.getElementById("qanswerspan");
			var i ;
			if(checkQcontent() && checkAoption() && checkBoption() &&checkCoption() && checkDoption() && checkQscope() && checkQdifficulty() && checkOword() && checkQanalysis()){
				for(i=0; i<qanswer.length; i++){
					if(qanswer[i].checked == true){
						break;
					}
				}
				if(i>=qanswer.length){
					qanswerspan.innerHTML = "* 请选择正确答案".fontcolor("red").fontsize("1px");
					return false;
				}else{
					return true;
				}
			}else{
				return false;
			}
		}
	</script>
  </head>
  
  <body>
	<div class="divtitle">
		<strong>添加选择题：</strong>
    </div>
    <div id="div1">
    	<div id="div2">
    		<form id="form1" action="${pageContext.request.contextPath }/question_ckXSXZQuestion.action?qtid=1&tid=<s:property value="#session.existTeacher.tid" />" method="post" target="mainFrame" onsubmit="return checkForm()">
    			<table>
    				<tr>
    					<td style="text-align: right; width: 80px;">题目</td>
    					<td style="text-align: left;">
    						<textarea id="qcontent" name="qcontent" style="resize:none; overflow-y:scroll" cols="40" rows="4" onblur="checkQcontent()"></textarea>
    						<span id="qcontentspan"></span>
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">选项A</td>
    					<td style="text-align: left;">
    						<input id="aoption" name="aoption" size="80px" type="text" onblur="checkAoption()"/>
    						<span id="aoptionspan"></span>
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">选项B</td>
    					<td style="text-align: left;">
    						<input id="boption" name="boption" size="80px" type="text" onblur="checkBoption()"/>
    						<span id="boptionspan"></span>	
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">选项C</td>
    					<td style="text-align: left;">
    						<input id="coption" name="coption" size="80px" type="text" onblur="checkCoption()"/>
    						<span id="coptionspan"></span>
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">选项D</td>
    					<td style="text-align: left;">
    						<input id="doption" name="doption" size="80px" type="text" onblur="checkDoption()"/>
    						<span id="doptionspan"></span>
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">正确答案</td>
    					<td style="text-align: left;">
    						A<input id="qanswerA" name="qanswer" type="radio" value=""/>
    						B<input id="qanswerB" name="qanswer" type="radio" value=""/>
    						C<input id="qanswerC" name="qanswer" type="radio" value=""/>
    						D<input id="qanswerD" name="qanswer" type="radio" value=""/>
    						<span id="qanswerspan"></span>
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">试题范围</td>
    					<td style="text-align: left;">
    						<select id="qscope" name="qscope" onblur="checkQscope()">
    								<option value="---请选择试题范围---">---请选择试题范围---</option>
    								<option value="第一单元">第一单元</option>
    								<option value="第二单元">第二单元</option>
    								<option value="第三单元">第三单元</option>
    								<option value="第四单元">第四单元</option>
    								<option value="第五单元">第五单元</option>
    								<option value="第六单元">第六单元</option>
    								<option value="第七单元">第七单元</option>
    								<option value="第八单元">第八单元</option>
    								<option value="第九单元">第九单元</option>
    								<option value="第十单元">第十单元</option>
    							 </select>
    						试题难度<select id="qdifficulty" name="qdifficulty" onblur="checkQdifficulty()">
    								<option value="---请选择试题难度---">---请选择试题难度---</option>
    								<option value="简单">简单</option>
    								<option value="中等">中等</option>
    								<option value="困难">困难</option>
    							 </select>
    						<span id="qsd"></span>
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">关键字</td>
    					<td style="text-align: left;">
    						<input id="oword" name="oword" type="text" onblur="checkOword()"/>
    						<span id="owordspan">* 关键字表示该试题所考察的知识点</span>
    						
    					</td>
    				</tr>
    				<tr>
    					<td style="text-align: right; width: 80px;">试题解析</td>
    					<td style="text-align: left;">
    						<textarea id="qanalysis" name="qanalysis" style="resize:none; overflow-y:scroll" cols="40" rows="4" onblur="checkQanalysis()"></textarea>
    						<span id="qanalysisspan"></span>
    					</td>
    				</tr>
    				<tr>
    					<td colspan="2">
    					<input class="add" style="width: 100px;" type="submit" value="添加试题"/>
    					<input class="reset" style="width: 100px;" type="reset"  value="重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置">
    					</td>
    				</tr>
    			</table>
    		</form>
    	</div>
    </div>
    
  </body>
</html>
