/**
 * 
 */
//验证手机号码
		 function checkPhone(){
		 	var phone = document.getElementById("phone").value;
		 	var phonespan = document.getElementById("phonespan");
		 	var reg = /^[0-9]{11}$/i;
		 	var flag;
		 	if(phone == ""){
		 		phonespan.innerHTML = "* 手机号不能为空".fontcolor("red").fontsize("2px");
		 		flag = false;
		 	}else if(!reg.test(phone)){
		 		phonespan.innerHTML = "* 手机号只能是11位的数字".fontcolor("red").fontsize("2px");
		 		flag = false;
		 	}else{
		 		phonespan.innerHTML = "* 该手机号可以使用".fontcolor("green").fontsize("2px");
		 		flag = true;
		 	}
		 	return flag;
		 }
		 function checkEmail(){
		 	var email = document.getElementById("email").value;
		 	var emailspan = document.getElementById("emailspan");
		 	var reg = /^\w+@\w+(\.\w+)+$/i;
		 	var flag;
		 	if(email == ""){
		 		emailspan.innerHTML = "* 请输入邮箱".fontcolor("red").fontsize("2px");
		 		flag = false;
		 	}else if(!reg.test(email)){
		 		emailspan.innerHTML = "* 邮箱格式错误".fontcolor("red").fontsize("2px");
		 		flag = false;
		 	}else{
		 		emailspan.innerHTML = "* 该邮箱可以使用".fontcolor("green").fontsize("2px");
		 		flag = true;
		 	}
		 	return flag;
		 }
		 
		 
		 function checkPW(pw1){
				
				var pw = document.getElementById("pw").value;
				var pwspan = document.getElementById("pwspan");
				var flag;
				if(pw1 != pw){
					pwspan.innerHTML = "* 密码错误".fontcolor("red").fontsize("2px");
					flag = false;
				}else{
					pwspan.innerHTML = "";
					flag = true;
				}
				return flag;
			}
			
			function checkNPW(){
				var npw = document.getElementById("npw").value;
				var npwspan = document.getElementById("npwspan");
				var flag;
				var reg = /^[0-9]{6,11}$/i;
				if(npw == ""){
					npwspan.innerHTML = "* 新密码不能为空".fontcolor("red").fontsize("2px");
					flag = false;
				}else if(!reg.test(npw)){
					npwspan.innerHTML = "* 密码只能是数字共6到11位".fontcolor("red").fontsize("2px");
					flag = false;
				}else{
					npwspan.innerHTML = "";
					flag = true;
				}
				return flag;
			}
			function checkQRPW(){
				var qrpw = document.getElementById("qrpw").value;
				var qrspan = document.getElementById("qrspan");
				var npw = document.getElementById("npw").value;
				var flag;
				if((npw == qrpw) && qrpw != ""){
					qrspan.innerHTML = "";
					flag = true;
				}else{
					qrspan.innerHTML = "* 两次密码不一致".fontcolor("red").fontsize("2px");
					flag = false;
				}
				return flag;
			}
			
			function checkSid(){
				var flag;
				//获取文件框值
				var sid = document.getElementById("sid").value;
				var reg = /^[0-9]{6,15}$/i;
				if(sid == ""){
					document.getElementById("sidspan").innerHTML = "* 学号不能为空".fontcolor("red").fontsize("2px");
					return false;
				}else if(!reg.test(sid)){
					document.getElementById("sidspan").innerHTML = "* 学号只能是6到15位的数字".fontcolor("red").fontsize("2px");
					return false;	
				}else{
					//1.创建异步交互对象
					var xhr = createXmlHttp();
					//2.设置监听
					xhr.onreadystatechange = function(){
						if(xhr.readyState == 4){	//数据返回完毕
							if(xhr.status == 200){		//http操作正常
								var text = xhr.responseText;
								if("t" == text){
									document.getElementById("sidspan").innerHTML = "* 该学号已被使用".fontcolor("red").fontsize("2px");
								}else{	
									document.getElementById("sidspan").innerHTML = "* 该学号可以使用".fontcolor("green").fontsize("2px");
									document.getElementById("password").value=sid;
									document.getElementById("passwordspan").innerHTML = "* 默认密码为学号".fontcolor("green").fontsize("2px");	
								}	
							}
						}
					}
					//3.打开连接
					xhr.open("GET","${pageContext.request.contextPath}/student_findBySid.action?time="+new Date().getTime()+"&sid="+sid,true);
					//4.发送
					xhr.send(null);		
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
			 
			 //校验学生姓名
			 function checkName(){
			 	var name = document.getElementById("name").value;
			 	var namespan = document.getElementById("namespan");
			 	var flag;
			 	if(name == ""){
			 		namespan.innerHTML = "* 姓名不能为空".fontcolor("red").fontsize("2px");
			 		flag = false;
			 	}else{
			 		namespan.innerHTML = "* 该姓名可以使用".fontcolor("green").fontsize("2px");
			 		flag = true;
			 	}
			 	return flag;
			 }
			 //校验学生密码
			 function checkPassword(){
			 	var password = document.getElementById("password").value;
			 	var passwordspan = document.getElementById("passwordspan");
			 	var reg = /^[0-9]{6,15}$/i;
			 	var flag;
			 	if(password == ""){
			 		passwordspan.innerHTML = "* 密码不能为空".fontcolor("red").fontsize("2px");
			 		flag = false;
			 	}else if(!reg.test(password)){
					document.getElementById("passwordspan").innerHTML = "* 密码只能是6到15位的数字".fontcolor("red").fontsize("2px");
					flag = false;	
				}else{
			 		flag = true;
			 	}
			 	return flag;
			 }
			 //验证手机号码
			 /*function checkPhone(){
			 	var phone = document.getElementById("phone").value;
			 	var phonespan = document.getElementById("phonespan");
			 	var reg = /^[0-9]{11}$/i;
			 	var flag;
			 	if(phone == ""){
			 		phonespan.innerHTML = "* 手机号不能为空".fontcolor("red").fontsize("2px");
			 		flag = false;
			 	}else if(!reg.test(phone)){
			 		phonespan.innerHTML = "* 手机号只能是11位的数字".fontcolor("red").fontsize("2px");
			 		flag = false;
			 	}else{
			 		phonespan.innerHTML = "* 该手机号可以使用".fontcolor("green").fontsize("2px");
			 		flag = true;
			 	}
			 	return flag;
			 }*/
			 function checkBJ(){
			 	var bjname = document.getElementById("bjname").value;
			 	var bjnamespan = document.getElementById("bjnamespan");
			 	var flag;
			 	if(bjname == "----请选择班级----"){
			 		bjnamespan.innerHTML = "* 请选择班级".fontcolor("red").fontsize("2px");
			 		flag = false;
			 	}else{
			 		bjnamespan.innerHTML = "";
			 		flag = true;
			 	}
			 	return flag;
			 }
			 
			 function checkbjname(){
					var flag;
					//获取文件框值
					var bj = document.getElementById("bj").value;
					bj = encodeURI(bj);
					bj = encodeURI(bj);
					//1.创建异步交互对象
					var xhr = createXmlHttp();
					//2.设置监听
					xhr.onreadystatechange = function(){
						
						if(xhr.readyState == 4){	//数据返回完毕
							if(xhr.status == 200){		//http操作正常
								var text = xhr.responseText;
								if("t" == text){
									document.getElementById("bjspan").innerHTML = "* 班级名已存在".fontcolor("red").fontsize("2px");
								}else{
									
									document.getElementById("bjspan").innerHTML = "* 班级名可以使用".fontcolor("green").fontsize("2px");
								}	
							}
						}
					}
					//3.打开连接
					xhr.open("GET","${pageContext.request.contextPath}/bj_findByName.action?time="+new Date().getTime()+"&bjname="+bj,true);
					//4.发送
					xhr.send(null);		
				}