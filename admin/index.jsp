<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-10" data-genuitec-path="/licai/WebContent/admin/index.jsp">
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
	body
	{
	  scrollbar-base-color:#C0D586;
	  scrollbar-arrow-color:#FFFFFF;
	  scrollbar-shadow-color:DEEFC6;
	}
	</style>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  <frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
	  <frame src="<%=path %>/admin/top.jsp" name="topFrame" scrolling="no">
	  <frameset cols="210,*" name="btFrame" frameborder="NO" border="0" framespacing="0">
	    <frame src="<%=path %>/admin/menu.jsp" noresize name="menu" scrolling="yes">
	    <frame src="<%=path %>/admin/index/sysPro.jsp" noresize name="main" scrolling="yes">
	  </frameset>
  </frameset>
  <noframes>
	  <body>您的浏览器不支持框架！</body>
  </noframes>
</html>
