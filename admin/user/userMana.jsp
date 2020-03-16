<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		
        <script language="javascript">
           function userDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?userId="+userId;
               }
           }
           function userEditPre(userId)
           {
                   window.location.href="<%=path %>/userEditPre.action?userId="+userId;
           }
       </script>
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50223",secure:"50232"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif' data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/licai/WebContent/admin/user/userMana.jsp">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/licai/WebContent/admin/user/userMana.jsp">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/img/tbg.gif">&nbsp;用户管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="15%">姓名</td>
					<td width="10%">性别</td>
					<td width="10%">住址</td>
					<td width="15%">联系方式</td>
					<td width="20%">用户名</td>
					<td width="10%">密码</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.userList" id="user">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userRealname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userAddress"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userPw"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="userDel(<s:property value="#user.userId"/>)" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
