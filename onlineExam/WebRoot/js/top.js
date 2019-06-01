/**
 * top
 */
 var t = null;
		 t = setTimeout(time,1000);//开始执行
		 var date = new Date();
		
	     var year = date.getFullYear();
	     var month = date.getMonth()+1;
	     var day = date.getDate();
	     var week = date.getDay();
	
		 function getWeek(num)
		 {
			var weeks = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];

			return weeks[num];
		 }
		 function time()
		 {
		    clearTimeout(t);//清除定时器
		    dt = new Date();
		    var h=dt.getHours();
		    var m=dt.getMinutes();
		    var s=dt.getSeconds();
		    document.getElementById("timeShow").innerHTML ="当前系统时间："+year+"-"+month+"-"+day+" "+getWeek(week)+" "+h+":"+m+":"+s;
		    t = setTimeout(time,1000); //设定定时器，循环执行            
		 }