<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-110" data-genuitec-path="/licai/WebContent/upload/upload_re.jsp">
		<font class="red" style="font-size: 18px;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-110" data-genuitec-path="/licai/WebContent/upload/upload_re.jsp">上传完毕</font><br/>
        <s:property value="#request.newFujianName"/><br/>
        <s:property value="#request.oldFujianName"/><br/>
        <s:property value='#request.fujianPath'/>
		
		<script language="javascript">
		     window.parent.document.getElementById("fujian").value="<s:property value='#request.fujianPath'/>";
		     window.parent.document.getElementById("fujianyuanshiming").value="<s:property value='#request.oldFujianName'/>";
		</script>
   </body>
</html>
