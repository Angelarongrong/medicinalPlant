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
    
    <title>江华县药市药用植物查询系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="。。。" />
	<script src="http://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-1542822386688301.js"></script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/main.css" rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,400,300,600,700|Six+Caps' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=demo.cssmoban.com" as="script">
	<script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=demo.cssmoban.com"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	
	
	     <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo....png">	
	
  </head>
  <body>
  <div class="header-top">
		<div class="container">
			<div class="head-main">
				<h1><a href="index.jsp">江华县药市药用植物查询系统</a></h1>
			</div>
			
			<div class="hea-rgt">
				<a href="#">登录</a>
			</div>
			<div class="navigation">
				 <nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!--/.navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
					 <li class="active"><a href="index.html">首页</a></li>
						<li><a href="query.jsp">查询系统</a></li>
						<li><a href="#">关于我们</a></li>
					</ul>
				</div>
				<!--/.navbar-collapse-->
			</nav>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--header-top-end-->
	<!--start-header-->
	<div class="header">
		<div class="container">
			<div class="head">
				<div class="soc">
					<ul>
						<li><a href="#"><span class="fb"><i class="icon-leaf"></i></span></a></li>
						<li><a href="#"><span class="twit"><i class="icon-plus-sign"></i></span></a></li>
						<li><a href="#"><span class="pin"><i class="icon-envelope-alt"></i> </span></a></li>
						<li><a href="#"><span class="rss"><i class="icon-lightbulb"></i>  </span></a></li>
						<li><a href="#"><span class="drbl"><i class="icon-search"></i>  </span></a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="header-right">
					<div class="search-bar">
						<form>
							<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="">
						</form>
					</div>
				</div>
				
					<div class="clearfix"></div>
			</div>
		</div>
	</div>	
	<!-- script-for-menu -->
	<!-- script-for-menu -->
		<script>
			$("span.menu").click(function(){
				$(" ul.navig").slideToggle("slow" , function(){
				});
			});
		</script>
	<!-- script-for-menu -->
				

	<!-- banner-starts -->
	<div class="banner">
		<div class="container">
			<div class="banner-top">
				<section class="slider">
					
							
							<div id="myCarousel" class="carousel slide">
							    <!-- 轮播（Carousel）指标 -->
							    <ol class="carousel-indicators">
							        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							        <li data-target="#myCarousel" data-slide-to="1" ></li>
							        <li data-target="#myCarousel" data-slide-to="2"></li>
							    </ol>   
							    <!-- 轮播（Carousel）项目 -->
							    <div class="carousel-inner">
							        <div class="item active">
							            <img src="images/jianghua1.jpg" alt="First slide" style="margin:15px ;width:100%;height:600px">
							            <div class="carousel-caption">江华图片1</div>
							        </div>
							        <div class="item">
							            <img src="images/jianghua2.jpg" alt="Second slide" style="margin:15px ;width:100%;height:600px">
							            <div class="carousel-caption">江华图片2</div>
							        </div>
							        <div class="item">
							            <img src="images/jianghua3.jpg" alt="Third slide" style="margin:15px ;width:100%;height:600px">
							            <div class="carousel-caption">江华图片3</div>
							        </div>
							    </div>
								
							
					</div>
				</section>
			
		<p>Copyright &copy; 2018.Medicinal Plant From Jianghua DataBase All rights reserved. </p>
			</div>
		</div>
	</div>
				
	
			
		
	<!--banner-end-->

	
	
  	</body>
</html>
