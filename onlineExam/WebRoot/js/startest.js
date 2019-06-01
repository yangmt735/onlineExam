/**
 * 
 */
history.go(1);
		var i;
	    var t;
	    function check1(x){
	    	t = x*60;
	    	i = self.setInterval("jishi()",1000);
	    }
	    function jishi(){
	    	h = parseInt(t/3600);
	    	m = parseInt((t-h*60*60)/60);
	    	mm = t-h*60*60-m*60;
	    	document.getElementById("span1").innerHTML = h+"时"+m+"分"+mm+"秒";
	    	t--;
	    	if(t == 600){
	    		alert("距离考试结束还有10分钟，请抓紧时间！");
	    	}
	    	if(t<0){
	    		i = window.clearInterval(i);
	    		var tnid = document.getElementById("span2").lang;
	    		alert("考试结束");
	    		window.location.href ="${pageContext.request.contextPath}/testNote_closeTestNote.action?tnid="+tnid;
	    	}
	    }
	    
	    function checkSubmit(node){
	    	var qid = node.name;
	    	var qanswer = node.value;
	    	var tnid = document.getElementById("span2").lang;
	    	if(qanswer != ""){
	    		qanswer = encodeURI(qanswer);
				qanswer = encodeURI(qanswer);
	    		//1.创建异步交互对象
				var xhr = createXmlHttp();
				//2.设置监听
				xhr.onreadystatechange = function(){
					
					if(xhr.readyState == 4){	//数据返回完毕
						if(xhr.status == 200){		//http操作正常
							var text = xhr.responseText;	
						}
					}
				}
				//3.打开连接
				xhr.open("GET","${pageContext.request.contextPath}/answerState_saveAnswerState.action?time="+new Date().getTime()+"&tnid="+tnid+"&qid="+qid+"&qanswer="+qanswer,true);
				//4.发送
				xhr.send(null);		
	    	}else{
	    		return null;
	    	}
	    }
	    function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			         xmlHttp.setrequestheader("content-type","application/x-www-form-urlencoded; charset=utf-8");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }
			return xmlHttp;
		 }
	    
	    function check(){
	    	var tnid = document.getElementById("span2").lang;
			if(confirm("您确定要交卷吗?")){
				window.location.href ="${pageContext.request.contextPath}/testNote_closeTestNote.action?tnid="+tnid;
			}else{
			
			}
	    }