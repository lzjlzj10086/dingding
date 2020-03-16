<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="robots" content="noindex, nofollow"/>
    <meta name="googlebot" content="noindex, nofollow"/>
    <link href="web_bg.css" rel="stylesheet"  type="text/css" />
    <title>Team | 个人理财系统</title>

    <script type="text/javascript" src="" ></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="main.css"/>
    <script language="javascript">
		    function check1()
		    {
		        if(document.form1.userName.value=="")
		        {
		            alert("请输入用户名");
		            return false;
		        }
		        if(document.form1.userPw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        if(document.form1.userPw.value!=document.form1.userPw1.value)
		        {
		            alert("两次密码不一样");
		            return false;
		        }
		        document.form1.submit();
		    }
        </script>

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-112" data-genuitec-path="/licai/WebContent/userReg1.jsp">
    <h data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-112" data-genuitec-path="/licai/WebContent/userReg1.jsp">
			<div id="biaoti">
				<div id="biaotitu"><img src=" img/1.jpg" width=40px; height=35px;></div>
				<div id="biaotizi">
					
					个人理财系统|注册</div>
				<ul>
					<li style="color: #000000">|首页</li>
					<li style="color: #000000">|登陆</li>
					<li style="color: #000000">|联系我们</li>
				</ul>
			</div>
	</h>
	

<div class="container">
    <div class="wrapper">
      <ul class="steps">
        <li class="is-active">第一步</li>
        <li>第二步</li>
        <li>第三步</li>
      </ul>
      <form class="form-wrapper"  action="<%=path %>/userReg.action" name="form1" method="post">
        <fieldset class="section is-active">
          <h3>填入信息</h3>
          <input type="text" name="userName" id="name" placeholder="用户名">
          <input type="text" name="userRealname" id="email" placeholder="真实姓名">
          <input type="text" name="userSex" id="age" placeholder="性别">
          <input type="text" name="userTel" id="phone" placeholder="手机号码">
          <input type="text" name="userAddress" id="userAddress" placeholder="住址">
		  
          <div class="button">下一步</div>
        </fieldset>
        <fieldset class="section">
          <h3>选择类型</h3>
          <div class="row cf">
            <div class="four col">
              <input type="radio" name="r1" id="r1" checked>
              <label for="r1">
                <h4>用户</h4>
              </label>
            </div>
          </div>
          <div class="button">下一步</div>
        </fieldset>
        <fieldset class="section">
          <h3>请输入密码</h3>
          <input type="password" name="userPw" id="password" placeholder="输入密码">
          <input type="password" name="userPw1" id="password2" placeholder="再次输入密码">
          <input class="submit button" type="submit" onclick="check1()" value="提交">
		  
        </fieldset>
        <fieldset class="section">
          <h3>用户创建失败</h3>
          <p>请重新注册</p>
          <div class="button">重新注册</div>
        </fieldset>
      </form>
    </div>
  </div>
<script type="application/javascript" src="main.js"></script>

<div id="web_bg" style="background-image: url(img/10.jpg);"></div>

	
  </body>
</html>
