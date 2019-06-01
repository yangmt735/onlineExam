/**
 * 
 */
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