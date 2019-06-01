/**
 * 
 */

function checkQcontent(){
			var qcontent = document.getElementById("qcontent").value;
			var qcontentspan = document.getElementById("qcontentspan");	
			var flag;
			if(qcontent == ""){
				qcontentspan.innerHTML = "* 不能为空".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				qcontentspan.innerHTML = "";
				flag = true;
			}
			return flag;
		}
		
		function checkQscope(){
			var qscope = document.getElementById("qscope").value;
			var qsd = document.getElementById("qsd");
			
			var flag;
			if(qscope == "---请选择试题范围---"){
				qsd.innerHTML = "* 请选择试题范围".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				qsd.innerHTML = "";
				flag = true;
			}
			return flag;
		}
		function checkQanswer(){
			var qanswer = document.getElementById("qanswer").value;
			var qanswerspan = document.getElementById("qanswerspan");
			var flag;
			if(qanswer == "---请选择答案---"){
				qanswerspan.innerHTML = "* 请输入正确答案".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				qanswerspan.innerHTML = "";
				flag = true;
			}
			return flag;
		}
		function checkQdifficulty(){
			var qdifficulty = document.getElementById("qdifficulty").value;
			var qsd = document.getElementById("qsd");
			var flag; 
			if(qdifficulty == "---请选择试题难度---"){
				qsd.innerHTML = "* 请选择试题难度".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				qsd.innerHTML = "";
				flag = true;
			}
			return flag;
		}
		function checkOword(){
			var oword = document.getElementById("oword").value; //关键字
			var owordspan = document.getElementById("owordspan");
			var flag;
			if(oword == ""){
				owordspan.innerHTML = "* 请输入关键字".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				owordspan.innerHTML = "";
				flag = true;
			}
			return flag;
		}
		
		function checkQanalysis(){
			var qanalysis = document.getElementById("qanalysis").value;
			var qanalysisspan = document.getElementById("qanalysisspan");
			var flag ;
			if(qanalysis == ""){
				qanalysisspan.innerHTML = "* 请输入解析".fontcolor("red").fontsize("1px");
				flag = false; 
			}else{
				qanalysisspan.innerHTML = "";
				flag = true; 
			}
			return flag;
		}
		
		function checkAoption(){
			var aoption = document.getElementById("aoption").value;
			var aoptionspan = document.getElementById("aoptionspan");
			var qanswerA = document.getElementById("qanswerA");
			var flag;
			if(aoption == ""){
				aoptionspan.innerHTML = "* 选项A不能为空".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				aoptionspan.innerHTML = "";
				qanswerA.value = aoption;
				flag = true;
			}
			return flag;
		}
		function checkBoption(){
			var boption = document.getElementById("boption").value;
			var boptionspan = document.getElementById("boptionspan");
			var qanswerB = document.getElementById("qanswerB");
			var flag;
			if(boption == ""){
				boptionspan.innerHTML = "* 选项B不能为空".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				boptionspan.innerHTML = "";
				qanswerB.value = boption;
				flag = true;
			}
			return flag;
		}
		function checkCoption(){
			var coption = document.getElementById("coption").value;
			var coptionspan = document.getElementById("coptionspan");
			var qanswerC = document.getElementById("qanswerC");
			var flag;
			if(coption == ""){
				coptionspan.innerHTML = "* 选项C不能为空".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				coptionspan.innerHTML = "";
				qanswerC.value = coption;
				flag = true;
			}
			return flag;
		}
		function checkDoption(){
			var doption = document.getElementById("doption").value;
			var doptionspan = document.getElementById("doptionspan");
			var qanswerD = document.getElementById("qanswerD");
			var flag;
			if(doption == ""){
				doptionspan.innerHTML = "* 选项D不能为空".fontcolor("red").fontsize("1px");
				flag = false;
			}else{
				doptionspan.innerHTML = "";
				qanswerD.value = doption;
				flag = true;
			}
			return flag;
		}
		
		
		