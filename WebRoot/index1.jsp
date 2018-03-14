<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	  			<li class="active"><a href="index1.jsp">主页</a></li>
	  			<li><a href="query.jsp">植物检索</a></li>
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
   
   <!-- 首页图文 -->
   <div class="container3">
   		<div class="images">
	   		<div id="myCarousel" class="carousel slide">
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
							            <img src="images/jianghua1.jpg" alt="First slide" style="width:100%;height:370px">
							            <div class="carousel-caption">江华图片1</div>
							        </div>
							        <div class="item">
							            <img src="images/jianghua2.jpg" alt="Second slide" style="width:100%;height:370px" >
							            <div class="carousel-caption">江华图片2</div>
							        </div>
							        <div class="item">
							            <img src="images/jianghua3.jpg" alt="Third slide" style="width:100%;height:370px">
							            <div class="carousel-caption">江华图片3</div>
							        </div>
							    </div>			
				</div>
   			</div>
   		</div>
   		<div class="words">
   			<p>	   江华瑶族自治县是湖南省永州市下辖县，位于湘、粤、桂三省（区）结合部，分别与广东、广西各三个县（市、区）相邻。
   			地理坐标为东经110°25′-112°10′，北纬24°38′-25°15′，南北长77.92公里，东西宽72.5公里 ，总面积3248平方公里。</p>
   			<p>截至2013年，江华瑶族自治县辖11个镇、11个乡、1个国有林场，总人口51万 ，是以瑶族为主、以壮族、汉族、苗族等十余个民族为辅聚居的少数民族自治县，是永州市唯一的少数民族自治县，是湖南省唯一的瑶族自治县，是全国13个瑶族自治县中瑶族人口最多的县，被誉为“神州瑶都”。</p>		
   		</div>   
   </div>
   
   <div class="container4">
   		<div class="row1">
   			<div class="box1">
   				<div class="punchbox1">
   					<h2 class="punchline1">
   						<span>关于</span>
   						<span>江华瑶药</span>
   					</h2>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2">
   					<h4>江华瑶药介绍</h4>
   					<p>啦啦啦啦啦啦啦啦啦</p>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2">
   					<h4>江华瑶药介绍</h4>
   					<p>哈哈哈哈哈哈哈哈哈哈嗝</p>
   				</div>
   			</div>
   		</div>
   		<div class="row2">
   			<div class="box2">
   				<div class="punchbox2">
   					<h4>江华瑶药介绍</h4>
   					<p>啦啦啦啦啦啦啦啦啦</p>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2">
   					<h4>江华瑶药介绍</h4>
   					<p>啦啦啦啦啦啦啦啦啦</p>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2">
   					<h4>江华瑶药介绍</h4>
   					<p>哈哈哈哈哈哈哈哈哈哈嗝</p>
   				</div>
   			</div>
   		</div>
   </div>
   
   <div class="container5">
   		<div class="show-title">
   				<h3>植物展示</h3>
   				<a href="#" class="more">查看更多</a>
   		</div>
   		<ul class="show-list">
   			
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>

   		</ul>
   		<ul class="show-list">
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   			
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   			<li class="show-item">
   				<a href="#" class="show-pic"><img src="images/pic.jpg" alt="#">
   				</a>
   				<div class="show-info">
   					<a href="#" class="show-name">植物名称</a>
   					<p class="show-name-p">植物其他信息</p>
   				</div>
   			</li>
   		</ul>
   		</div>
   		
   		<!--  友情链接和脚本 -->
   		<footer class="footer">
   			<div class="footer-container">
   				<div class="footer-link">
   					<div class="footer-link-item">
   						<div class="footer-code">
   							<img src="images/" alt="一个二维码">
   						</div>
   						<div class="code-text">
   							<p>扫描二维码</p>
   							<p>获取我们的最新动态</p>
   						</div>
   					</div>
   					<div class="footer-link-item">
   						<h4 class="footer-title">友情链接</h4>
   						<ul class="footer-list">
   							<li class="item">
   								<a href="#">网站名字与链接</a>
   							</li>
   							<li class="item">
   								<a href="#">网站名字与链接</a>
   							</li>
   							<li class="item">
   								<a href="#">网站名字与链接</a>
   							</li>
   							<li class="item">
   								<a href="#">网站名字与链接</a>
   							</li>
   							<li class="item">
   								<a href="#">网站名字与链接</a>
   							</li>
   						</ul>
   					</div>
   				</div>
   				<div class="footer-copyright">
   					<p>©2018 ****** 版权所有。</p>
   				</div>
   			</div>
   			</footer>
   		  
  </body>
</html>
