<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
 <head>
    <base href="<%=basePath%>">
    
    <title>江华县药市药用植物资源数据库</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index1.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	

  </head>
  
  <body>
  	<!-- 页面顶部开始 -->
  	<div class="top">
  		<div class="top-container">
  			<div class="header-logo">
  				<h1>
  					<a>江华县药市药用植物资源数据库</a>
  					
  				</h1>
  			</div>
  			<div class="header-login">
  		   <table class="top-table">  		   		
  		   		<tr>
  		   			<td>
  		   				<a class="top-table-font" href="#">注册</a>
  		   				<a class="top-table-font-"> | </a>
  		   				<a class="top-table-font" href="#">登录</a>
  		   			</td>
  		   		</tr>
  		   </table> 
  		   </div>               
  		</div>
  	
  	</div>
  	<!-- 页面顶部结束 -->
  	
  	<!-- 导航和搜索栏 -->
  	<div class="container2">	
	  	<div class="menu">  
	   		<ul>  					
	  			<li><a href="index1.jsp">主页</a></li>
	  			<li class="active"><a href="query.jsp">植物检索</a></li>
	  			<li><a href="#">相关信息</a></li>
	  			<li><a href="#">联系我们</a></li>			
	  		</ul>
	  	</div>	
	  	<div class="search">
	  		<ul>
	  			<li>
	  				<div class = "search-bar">
	  					<input type="text" class="input-search">
	  					<a href="#"  class="search-button" onclick="www.baidu.com" type="submit">
	  					<!--  	<i class="search-logo">  ?</i>-->
	  					</a>
	  				</div>
	  			</li>
	  		</ul>
	  	</div>
   </div>
   <!-- 导航和搜索栏结束 -->
   

  	</body>
</html>