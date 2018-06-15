<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<meta http-equiv="Refresh" content="0;url=login.jsp">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Custom Theme files -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->
	<!-- web font -->
	<link href='//fonts.googleapis.com/css?family=Dosis:400,300,200,500,600,700,800' rel='stylesheet' type='text/css'>
	<!-- //web font -->
 </head>
  
 
  <div class="main">
		<h1>管理员注册</h1>
		
		<div class="main-row">
			<div class="agileits-top"> 
				<s:form action="admin/admin_reg" id="defaultForm" method="post" enctype="multipart/form-data" >
					<input class="text" type="text" name="admin.guanli" placeholder="用户名" required>
					<input class="text" type="password" name="admin.mima" placeholder="输入密码" required>
					<input type="submit" value="注册">
				</s:form>
				<!--  <p><a href="#">Forgot password?</a></p>-->
			</div>	 
		</div>	
		</div>
  </body>
</html>



 
  		