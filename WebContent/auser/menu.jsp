<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'menu.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css">
	</head>




<body>
    <div class="wrap">
        <div class="header"></div>
        <div class="nav">
            <ul>
                <li class="list">
                    <h2><i></i>个人信息</h2>
                    <div class="hide">
                       
		  
			<h5><a href='<%=path %>/auser/userinfo/userPw.jsp' target='main'>个人信息修改</a></h5>
		
                    </div>
                </li>
                <li class="list">
                    <h2><i></i>收入信息</h2>
                    <div class="hide">
                        <h5><a href='<%=path %>/auser/shouru/shouruAdd.jsp' target='main'>收入信息添加</a></h5>
                        <h5><a href='<%=path %>/shouruMana.action' target='main'>收入信息管理</a></h5>
                    </div>
                </li>
                <li class="list">
                    <h2><i></i>消费信息</h2>
                    <div class="hide">
                        <h5><a href='<%=path %>/auser/xiaofei/xiaofeiAdd.jsp' target='main'>消费信息添加</a></h5>
                        <h5><a href='<%=path %>/xiaofeiMana.action' target='main'>消费信息管理</a></h5>
                    </div>
                </li>
                <li class="list">
                    <h2><i></i>投资信息</h2>
                    <div class="hide">
                        <h5><a href='<%=path %>/auser/touzi/touziAdd.jsp' target='main'>投资信息添加</a></h5>
                        <h5><a href='<%=path %>/touziMana.action' target='main'>投资信息管理</a></h5>
                   
                    </div>
                </li>
 	<li class="list">
                    <h2><i></i>统计分析</h2>
                    <div class="hide">
                        <h5><a href='<%=path %>/tongji_meiri.action' target='main'>每日统计分析</a></h5>
                        <h5><a href='<%=path %>/tongji_meiyue.action' target='main'>每月统计分析</a></h5>
                        
                    </div>
                </li>
<li class="list">
                    <h2><i></i>理财日志</h2>
                    <div class="hide">
                        <h5><a href='<%=path %>/auser/rizhi/rizhiAdd.jsp' target='main'>理财日志添加</a></h5>
                        <h5><a href='<%=path %>/rizhiMana.action' target='main'>理财日志管理</a></h5>
                        
                    </div>
                </li>
<li class="list">
                    <h2><i></i>退出系统</h2>
                    <div class="hide">
                        <h5><a href='#' onclick='javascript:window.parent.location="<%=path %>/login.jsp"'>安全退出系统</a></h5>
                 
                        
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <script>
        (function () {
            var oList = document.querySelectorAll('.list h2'),
                oHide = document.querySelectorAll('.hide'),
                oIcon = document.querySelectorAll('.list i'),
                lastIndex = 0;
            for(var i=0;i<oList.length;i++){
                oList[i].index = i;//自定义属性
                oList[i].isClick = false;
                oList[i].initHeight = oHide[i].clientHeight;
                oHide[i].style.height = '0';
                oList[i].onclick = function () {
                    if(this.isClick){
                        oHide[this.index].style.height = '0';
                        oIcon[this.index].className = '';
                        oList[this.index].className = '';
                        oList[this.index].isClick = false;
                    }
                    else{
                        oHide[lastIndex].style.height = '0';
                        oIcon[lastIndex].className = '';
                        oList[lastIndex].className = '';
                        oHide[this.index].style.height = '75px';
                        oIcon[this.index].className = 'on';
                        oList[this.index].className = 'on';
                        oList[lastIndex].isClick = false;
                        oList[this.index].isClick = true;
                        lastIndex = this.index;
                    }
                }
            }
        })();
    </script>

</body>
</html>
