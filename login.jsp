<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<title>login.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css">
    <style type="text/css">
    body 
    {
	   margin-left: 0px;
	   background-image: url(<%=path %>/img/背景.jpg);
	   background-size: cover;
    }
   .table{
	height: 500px;
	width: 550px;
	background-color: #D5FFFF;
	position: absolute;
	top: 25%;
	left: 60%;
	}
    .style2 {color: #990000}
    .input1 
    {
 	   position: absolute;
	   top:20%;
	   width:300px;
	   height:50px;
    }
    .input2{
       position: absolute;
	   top:40%;
	   width:300px;
	   height:50px;
    }
    .select{
    	position:absolute;
    	top:53%;
    	float: right;
    	right:104px;
    }
    .INPUT_text{
     width:150px;
	 height:30px;
    }
    .submit1 
    {
      position: absolute;
	  width:300px;
	  height:50px;
	  top:60%;
	  background-color:red;
	  color:white;
	  font-size:20px;
	  font-family: "微软雅黑";
    }
    .submit
    {
      position: absolute;
	  right:104px;
	  top:73%;
	  font-size:15px;
	  font-family: "微软雅黑";
    }
    img{
      position: absolute;
	 
	  top:73%;
    }
    .STYLE12 {font-family: Georgia, "Times New Roman", Times, serif}
    .STYLE13 {color: #316BD6; }
    .STYLE15 {color: #fdsere; font-size: 9pt; }
 </style>
 
 
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
 <script language="javascript">
	 function check1()
	 {                                                                                         
	     if(document.ThisForm.userName.value=="")
		 {
		 	alert("请输入用户名");
			document.ThisForm.userName.focus();
			return false;
		 }
		 if(document.ThisForm.userPw.value=="")
		 {
		 	alert("请输入密码");
			document.ThisForm.userPw.focus();
			return false;
		 }
		 if(document.ThisForm.userType.value=="-1")
		 {
		 	alert("请选择登陆身份");
			document.ThisForm.userType.focus();
			return false;
		 }
		 document.getElementById("indicator").style.display="block";
		 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
	 }

	 function callback(data)
	 {
	    document.getElementById("indicator").style.display="none";
	    if(data=="no")
	    {
	        alert("用户名或密码错误");
	    }
	    if(data=="yes")
	    {
	       
	        window.location.href="<%=path %>/loginSuccess.jsp";
	    }
	 }
 
     function reg()
     {
		  var strUrl = "<%=path %>/userReg.jsp";
          var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	 }
 </script>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-104" data-genuitec-path="/licai/WebContent/login.jsp">

 
<body>
	<br>
	<br>
	<br>
	<br>
	
	<table width="500" height="400" class="table" border="0" align="center" cellpadding="0" cellspacing="0" >
	 <tr>
		<td width="559">
			<form name="ThisForm" method="POST" action="">
				<table width="410" height="198" border="0" align="right" cellpadding="0" cellspacing="0">
					<tr>
						<td height="10" colspan="2"></td>
					</tr>
			        <tr>
						<td  valign="bottom">
					        <input name="userName" placeholder="请输入用户名"  type="text" class="input1" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
						</td>
					</tr>
					<tr>
						<td height="10" colspan="2" valign="bottom"></td>
					</tr>
					<tr>
						<td valign="top" class="STYLE15"> 
							<input name="userPw" placeholder="请输入密码" type="password" size="21" class="input2" align="bottom" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
						</td>
					</tr>
					<tr>
						<td height="10" colspan="2" valign="bottom"></td>
					</tr>
					<tr style="display: block" class="select">
					    <td colspan="2" valign="top" class="STYLE15">
					         
					         <select class="INPUT_text" name="userType">
							    <option value="-1" selected="selected">请选择登陆身份</option>
								<option value="0">管理员</option>
								<option value="1">用&nbsp;&nbsp;&nbsp;户</option>
							 </select>
                        </td>
				    </tr>
					<tr>
						<td valign="top">
							<input name="button" type="button" class="submit1" value="登录" onClick="check1()"> 
							<a href="userReg1.jsp" class="submit" value="注册" >注册账号?</a>
							<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
						</td>
				    </tr>
                </table>
	        </form>
        </td>
     </tr>
    </table>
</body>
