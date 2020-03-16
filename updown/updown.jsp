<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.jspsmart.upload.*" %>
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
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-108" data-genuitec-path="/licai/WebContent/updown/updown.jsp"> 
      <% 
          try
          {
              String fujianPath=request.getParameter("fujianPath");
	          String fujianYuashiMing=request.getParameter("fujianYuashiMing");
	          fujianYuashiMing=java.net.URLDecoder.decode(fujianYuashiMing,"UTF-8");
	          System.out.println(fujianYuashiMing+fujianPath);
	          
	          SmartUpload su = new SmartUpload(); // 新建一个SmartUpload对象 
	
	          su.initialize(pageContext); // 初始化 
	
	          su.setContentDisposition(null); 
	          // 设定contentDisposition为null以禁止浏览器自动打开文件， 
	          //保证点击链接后是下载文件。若不设定，则下载的文件扩展名为 
	          //doc时，浏览器将自动用word打开它。扩展名为pdf时，将用acrobat打开
	          //response.sendRedirect(path+"/updown/updown_err.jsp");
	          //su.downloadFile("/uploadPath/file/liu.doc"); // 下载英文文件
	         
	          su.downloadFile(fujianPath, null, new String(fujianYuashiMing.getBytes(), "ISO8859-1")); // 下载中文文件
	          //downloadFile(String sourceFilePathName, String contentType, String destFileName)
	          out.clear();
	          out=pageContext.pushBody(); 
          }
          catch(Exception e)
          {%>
              <script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-108" data-genuitec-path="/licai/WebContent/updown/updown.jsp">
                    alert("文件不存在。请联系管理人员");
                    window.history.back();
              </script>
        <%}
      %> 

      
  </body>
</html>
