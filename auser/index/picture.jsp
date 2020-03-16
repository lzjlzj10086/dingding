<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'picture.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
body{
	background-color:white;
	}

a{
	text-decoration: none;
	}	

*{
	margin:0;
	padding:0;
	list-style:none
	}
.box{ 
	position: absolute;
	float:left;
	
	top:64px;
	width:1478px;
	height:670px; 
	border:1px solid #ce5825; 
	margin:0 auto; 
	padding:10px; 
	}
.box .nav{ 
	position:absolute;
	float:left;
	left:420px;
	top:653px;
	height:30px; 
	border-bottom:1px solid #CF171A; 
	padding-left:200px;
	padding-right:200px;
	padding-bottom:3px;
	}
.nav li{ 	
	float:left; 
	width:80px; 
	height:30px; 
	background:#dd7d4d; 
	color:#fff; margin-right:5px; 
	line-height:30px; 
	text-align:center; 
	cursor:pointer 
	}
.nav li.cur{ 
	background:  #791b1b
	}
.box img{ 
	width:1497px; 
	height:670px;
	}
.list{ 
	width:1497px; 
	height:670px; 
	display:none; 
	margin-top:4px; 
	overflow:hidden;
	}
.list_bd{
	position: absolute;
	float: left;
	left: 0px;
	top: 0px;
	width: 1497px;
	height: 670px;
	overflow: hidden;
	float: left;
	 }
.list_nav{ 
	position: relative;
	float:right;
	right:10px;
	top:160px;
	width:60px; 
	height:265px; 
	float:right;
	}
.list_nav li{
	width:100%; 
	height:40px; 
	background:#bc5034; 
	color:#fff; 
	text-align:center; 
	line-height:40px;
	 margin-bottom:1px;
	 }
.list_nav li.cur{ 
	background:#791b1b
	}
.show{ 
	display:block;
	}
.hide{ 
	display:none;
	}	
}
#img3{
	position: absolute;
	float:left;
	left:400px;
	top:140px;
	width:550px;
	height:300px;
	}
.div2{
	position: relative;
	float:right;
	right:850px;
	top:100px;	
	}
.hr1{
	position:absolute;
	float:left;
	left:0px;
	top:970px;
	width:1500px;
	height:1px;
	background-color:red;
	}
</style>
<script type="text/javascript">	
var Global = {}
Gloabl = {
	/*
		元素移动函数	
		obj : 运动对象(元素)；
	   attr : 运动属性（左、右、上、下）;
	  speed : 每次移动的距离;
	 target : 运动的距离；
		 fn : 回调函数 到达距离执行的函数 可有可无
	*/
	fnMove : function(obj,attr,speed,target,fn){
		if(obj.timer) return
		var n = parseInt(getCss(obj,attr)); // 获取当前		
		speed = n > target ? -Math.abs(speed) : Math.abs(speed); //判断 speed 加等、减等  大于目标位置 speed 减等小于目标位置 speed 加等
		obj.timer = setInterval(function(){		 
			if(speed > 0 && n >= target || speed < 0 && n <= target){  //判断停止条件 如果到达目标点 n 等于目标点 清空定时器
				n = target
				obj.style[attr] = n + 'px';
				clearInterval(obj.timer)
				obj.timer = null
				fn && fn()
			}else{
				n += speed;
				obj.style[attr] = n + 'px'
			}		
		},30) 		
	},
	
	/*
		元素抖函数	
		obj : 抖动对象(元素)；
	   attr : 抖动属性（左、右、上、下）;
		  n : 每次抖动的距离;
		 fn : 回调函数 到达距离执行的函数 可有
	*/	
	fnShake : function (obj,attr,n,fn){
		if(obj.timer) return
		var arr = [],m = 0;
		for(var i = n; i >= 0; i -= 3) arr.push(i,-i)
		arr.push(0)		
		var iNum = parseInt(getCss(obj,attr))
		obj.timer = setInterval(function(){
			obj.style[attr] = iNum + arr[m++] + 'px';
			if(m > arr.length -1){
				clearInterval(obj.timer)
				obj.timer = null
				fn && fn();
			}
		},30)		
	},
	
	/*
		opacity 函数	
		e : 操作对象(元素)
		n : 透明度 0~1
	*/
	opacity : function (e,n){  //  0.6  
		var t = getCss(e,'opacity')*100; // 0
		var b = 0.1*100;
		n = n*100
		b = t < n ? Math.abs(b) : -Math.abs(b)
		e.timer = setInterval(function(){
			if(b > 0 && t >= n || b < 0 && t <= n ){
				t = n/100		 
				clearInterval(e.timer)
			}else{
				t += b
				e.style.opacity = t/100
			}		
		},50)	
	}
}

/* $(id)*/
function $(n){
	return document.getElementById(n.slice(1))
}

/*getClass(document,'.class')*/
function getClass(n,k){
	for (var q = n.getElementsByTagName("*"),t = [], i = 0; i < q.length; i++){
		var e = q[i].className.split(' ');
		for(var j = 0; j < e.length; j++){
			if(k.slice(1) === e[j]){				
				t.push(q[i])				
				break
			}
		}		
	} 
	return t
}

/*getTag(document,'tagName')*/
function getTagName(n,k){
	return n.getElementsByTagName(k)
}

//获取非行间样式
function getCss(obj,attr){
	return obj.currenStyle ? obj.currenStyle[attr] : getComputedStyle(obj,false)[attr];
}
     
</script>
<script type="text/javascript">
window.onload = function(){
	var aDiv = getClass(document,'.list');
	var	oUl = getClass(document,'.nav')[0],
	   aBtn = getTagName(oUl,'li');	   
	var timer = null,t = 0,b = 0;	
		
	fnAutoPlay(aDiv[0])
	
	//自动播放每一组播放完回调自已切换下一组
	function fnAutoPlay(e,n){
		var aLi = getTagName(e,'li'),
			 aP = getTagName(e,'p');
		var n = n||0;
		fnActive(aLi,aP,n%aLi.length)
		timer = setInterval(function(){
			n++	
			b = n
			fnActive(aLi,aP,n%aLi.length)			
			if(n%aLi.length === 0){
				clearInterval(timer)
				t++					
				fnActive(aBtn,aDiv,t%aDiv.length)
				fnAutoPlay(aDiv[t%aDiv.length])		
			}
		},1000)		
	}	
	
	for(var i = 0; i < aDiv.length; i++){
		fnMouse(aDiv[i])
	}
	
	//鼠标移入停止播放	
	function fnMouse(e){
		var aLi = getTagName(e,'li'),
			 aP = getTagName(e,'p'),
			 aImg = getTagName(e,'img');
		for(var i = 0; i < aLi.length; i++){
			(function(index){
				aP[index].onmouseover = aLi[index].onmouseover = function(){	
					clearInterval(timer)
					fnActive(aLi,aP,index)
				}
				aP[index].onmouseout = aLi[index].onmouseout = function(){
					fnAutoPlay(e,index)						
				}
			})(i)			
		}
	}
	function fnActive(ele,ele2,n){
		for(var i = 0 ; i < ele.length; i++) {
			ele[i].className = ''
			ele2[i].style.display = 'none'
		}		
		ele[n].className = 'cur'
		ele2[n].style.display = 'block'
	}
	
	//主菜单移入事件 如果不是选中状态清0 当前下的所有li的Active清空,默认第一个选中
	//主菜单移开事件 如果当前选中状态记录N的值，移开后继续从N开始
	for(var i = 0; i < aBtn.length; i++){
		(function(index){
			aBtn[index].onmouseover = function(){				
				clearInterval(timer)
				if(aBtn[index].className != 'cur'){
					b = 0
					var aLi = getTagName(aDiv[index],'li')
					var  aP = getTagName(aDiv[index],'p')
					fnActive(aLi,aP,b)			
				}
				fnActive(aBtn,aDiv,index)
			}
			aBtn[index].onmouseout = function(){
				fnAutoPlay(aDiv[index],b)
				t = index				
			}
		})(i)		
	}	
}
</script>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-115" data-genuitec-path="/licai/WebContent/auser/index/picture.jsp">
    <div id="wrap" class="box" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-115" data-genuitec-path="/licai/WebContent/auser/index/picture.jsp">                               
        <div class="list show">
            <div class="list_bd">
                <p><a href="https://www.toutiao.com" ><img src="<%=path %>/img/news1.png" /></a></p>
                <p><a href="https://www.toutiao.com/ch/news_entertainment" ><img src="<%=path %>/img/news2.png" /></a></p>
                <p><a href="https://www.toutiao.com/ch/news_sports" ><img src="<%=path %>/img/news3.png" /></a></p>
            </div> 
            <ul class="list_nav">
              <li class="cur">1</li>
                <li>2</li>
                <li>3</li>
            </ul>           	
        </div>                
        <div class="list">
            <div class="list_bd">
                <p><a href="http://quote.eastmoney.com/" ><img src="<%=path %>/img/gushi1.png" /></a></p>
                <p><a href="http://quote.eastmoney.com/sz002364.html" ><img src="<%=path %>/img/gushi2.png" /></a></p>
                <p><a href="http://quote.eastmoney.com/sh600000.html" ><img src="<%=path %>/img/gushi3.png" /></a></p>
                <p><a href="http://quote.eastmoney.com/sh600004.html" ><img src="<%=path %>/img/gushi4.png" /></a></p>
            </div>  
             <ul class="list_nav">
                <li class="cur">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
            </ul>          	
        </div>
        <div class="list">
            <div class="list_bd">
                <p><a href="http://www.donggang.gov.cn/pricedirectlist.asp" ><img src="<%=path %>/img/wujia.png" id="img3"/></a></p>
            </div>  
            <ul class="list_nav">
                <li class="cur">1</li>     
            </ul>          	
        </div>  
        <ul class="nav">
            <li class='cur'>今日新闻</li>
            <li>股市情况</li>
            <li>今日物价</li>
        </ul>        
    </div>  
  </body>
</html>
