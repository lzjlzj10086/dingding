<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-105" data-genuitec-path="/licai/WebContent/loginSuccess.jsp">
       <script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-105" data-genuitec-path="/licai/WebContent/loginSuccess.jsp">
           function tiao()
           {
               <s:if test="#session.userType==0">
                   window.location.href="<%=path %>/admin/index.jsp";
               </s:if>
               <s:if test="#session.userType==1">
                   window.location.href="<%=path %>/auser/index.jsp";
               </s:if>
           }
           
           setTimeout(tiao,1300)
       </script>
       <br> <br> <br> <br> <br> <br> <br> <br> <br>
       
  </body>
</html>
