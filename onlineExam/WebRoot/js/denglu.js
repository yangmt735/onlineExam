/**
 * 学生、老师、管理员登录验证
 */

function checkPW(){
			var password = document.getElementById("password").value;
			var pwspan = document.getElementById("pwspan");
			var flag = false;
			if(password == ""){
				pwspan.innerHTML = "* 密码不能为空".fontcolor("red").fontsize("2px");
				flag = false;
			}else{
				pwspan.innerHTML = "";
				flag = true;
			}
			return flag;
		}
		function checkForm(){
			if(checkId() && checkPW()){
				return true;
			}else{
				return false;
			}
		}