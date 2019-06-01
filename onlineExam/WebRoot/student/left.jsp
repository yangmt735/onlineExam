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
	<%-- <style type="text/css">
        /* body{
		   margin:0px;
		   padding:0px;
		   width:100%;
		   height:100%;
		   text-align:center;
		   font-size:12px;
		}
		#div1{
		   margin:0px;
		   padding:0px;
		   width:98%;
		   height:99%;  
		   font-size:14px;
		   border:2px solid #CCC;
		   position:absolute;
		   
		}
		#div2_1,#div2_2,#div2_3,#div2_4,#div2_5,#div2_6{
			margin:1px 2px 0px 2px;
			padding:0px;
			border:1px solid #CCC;
		}
		#div2_1{
			margin-top:2px;
		}
		#a1_1,#a1_2,#a1_3,#a1_4,#a1_5,#a1_6{
			/* background-color:#1978AE; */
			background-color: #64beef;
			display:block;
			width:100%;
			color:#FFF;
			border-bottom:#CCC;
			font-weight:normal;	
			height: 30px;
			line-height: 30px;
			text-decoration:none;	
		}
		#a1_1:hover,#a1_2:hover,#a1_3:hover,#a1_4:hover,#a1_5:hover,#a1_6:hover{
			background-color:#0d60bc;
		}
		
		/* div a:link,div a:visited{
			font-weight:bold;
			color:#446172;
			text-decoration:none;
			background-color:#0d60bc;
		} */
		/* a:hover{
			color:#df4011;
			background-color:#0d60bc;
		} */
		
		div ul{
			list-style:none;
			margin:0px;
			padding:0px;
			display:none;
		}
		div ul li{
			padding:3px 0;
		}
		
		/*预定义样式*/
		.open{
			display:block;
		}
		.close{
			display:none;
		} */
    </style>
    <script type="text/javascript">
		function list(node){
			/*
				首先获得当前节点的父节点div
				在通过父节点获取ul节点
			*/
			var oDivNode = node.parentNode;		//获取父节点div
			var oUlNode = oDivNode.getElementsByTagName("ul")[0];  //获取该父节点下的ul节点
			
			var collUlNodes = document.getElementsByTagName("ul");	//获取所有ul节点
			
			for(var i=0; i<collUlNodes.length; i++){
				if(collUlNodes[i]==oUlNode){
					if(oUlNode.className=="open"){
						oUlNode.className = "close";
					}else{
						oUlNode.className = "open";
					}
				}else{
					collUlNodes[i].className = "close";	
				}
			}
		}
	</script> --%>
	<script type="text/javascript" src="./js/left.js"></script>
  </head>
  
 <body>
  <div id="div1">
  	<div id="div2_1">
        <a id ="a1_1" href="${pageContext.request.contextPath }/testControl_ckTestControl.action" target="mainFrame">进行考试</a>
    </div>
   
	<div id="div2_2">
        <a id ="a1_2" href="${pageContext.request.contextPath}/student_ckTestNote.action?sid=<s:property value="#session.existStudent.sid"/>" target="mainFrame">考试记录</a>
    </div>
    
	<div id="div2_3">
    	 <a id ="a1_3" href="${pageContext.request.contextPath }/student_myBJ.action?sid=<s:property value="#session.existStudent.sid"/>" target="mainFrame">我的班级</a>
    </div>
    <div id="div2_4">
    	 <a id ="a1_4"  href="${pageContext.request.contextPath }/student_wsStudent.action?sid=<s:property value="#session.existStudent.sid"/>" target="mainFrame">完善信息</a>
    </div>
    <div id="div2_5">
    	 <a id ="a1_5"  href="${pageContext.request.contextPath }/student_upw.action" target="mainFrame">修改密码</a>
    </div> 
  </div>   
</body>
</html>
