<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>物种详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" type="text/css" href="css/index1.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">		
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"media="screen and (max-device-width:400px)"href="tinyScreen.css" />
	
 	 <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		
		<script type="text/javascript" src="js/jquery.min.js"></script>	

  </head>
  
  <body>
  	<!-- 页面顶部开始 -->
  	<div class="top">
  		<div class="row">
  		<!-- 登陆注册 -->
  			<div class="header-login ">
	  		   <div class="top-table">
	  		     <c:choose>
		       <c:when test="${admin.guanli ==null}"> <ul>	  		
	  		   			<li><a class="top-table-font" href="reg.jsp">注册</a></li>
	  		   			<li><a class="top-table-font" href="login.jsp">登录</a></li>  		   			
	  		   		</ul>
	  		   	</c:when>
		       <c:otherwise>
		       <ul>
		     
		      <li> <a class="top-table-font" href="logout.jsp">退出</a>  </li>
		       <li> <a class="top-table-font"><c:out value="${admin.guanli}"></c:out>, 欢迎您!</a>	</li>
		      </ul>
		       </c:otherwise>
		     </c:choose>		   		
	  		   		
	  		
	  		   </div> 
  		   </div> 
  		   <!-- 登陆注册结束 --> 
  		<!-- 1.标题和登录按钮 -->
  		<div class="top-contain ">
  			<div class="header-title">
  				<h2>江华县药市</h2>
  				<h1>药用植物资源数据库</h1>
  			
  			</div>
  			
  		   <!-- 1.结束 -->     
  		   <!-- 搜索栏开始-->   
	 	   <s:form action="plant/plant_queryPlant" method="post">
  		    <div class="search ">
		  		<div class="container1-1">
		  			<div class="input-group " style="margin-top:0px positon:relative">  
		      			 <input type="text" class=" search clearable" name="keywords" placeholder="搜索植物，例如：耳草" / >  
		       				<span class="input-group-btn">  
		           			<button class="btn btn-info btn-search" type="submit"><i class="fa fa-search"></i></button>             
		        			</span>  
		 			</div>  
		  		</div>
  			</div>
  			</s:form>
  			<!-- 搜索栏结束--> 
  			</div>
  			<!-- 导航开始--> 
  			<div class=" contain2 col-xs-12">	
	  			<div class="menu">  
			   		<ul>  					
			  			<li><a href="plant/plant_showPlant">主页</a></li>
			  			<li><a href="plant/plant_showPlant1">植物检索</a></li>
			  			<li><a href="plant/plant_showPlant2">数据编辑</a></li>
			  			<li><a href="otherinfo.jsp">相关信息</a></li>
			  			<li><a href="aboutus.jsp">联系我们</a></li>			
			  		</ul>
	  			</div>	
  		   </div>
  			<!-- 导航结束--> 
  	</div>
  	</div>
  	<!-- 页面顶部结束 -->
  	
  	<!-- 正文开始 -->
  	<div class="detail-contain">
  		<div class="detail-layer1">
	  		<div class="left-layer">
		  		<div class="detail-images">
		  		 <img src = "<%=basePath %>${plant.filepath}" style="width:100%; height:100%;">		  		
		  		</div>
		  		
		  		<div class="shuxing">
		  			<div class="shuxing-layer1">
		  				<div class="shuxing-layer2">
		  						<div class="shuxing-layer3">学名</div>
		  				</div>
		  				<div class="shuxing-layer2">
		  						<div class="shuxing-layer3">俗名</div>
		  				</div>
		  				<div class="shuxing-layer2">
		  						<div class="shuxing-layer3">科</div>
		  				</div>
		  				<div class="shuxing-layer2">
		  						<div class="shuxing-layer3">属</div>
		  				</div>
		  				<div class="shuxing-layer2">
		  						<div class="shuxing-layer3">编号</div>
		  				</div>
		  			</div>
		  		
			  		<div class="xinxi">
				  		<div class="detail-xinxi">
					  		 <p><c:out value="${plant.scchname}"></c:out></p>            
				             <p style="font-style:italic;"><c:out value="${plant.scname}"></c:out></p>
				  		</div>
				  		<div class="detail-xinxi">
					  		 <p><c:out value="${plant.chloname}"></c:out></p>            
				             <p style="font-style:italic;"><c:out value="${plant.loname}"></c:out></p>
				  		</div>
				  		<div class="detail-xinxi">
					  		 <p><c:out value="${plant.chfaname}"></c:out></p>            
				             <p style="font-style:italic;"><c:out value="${plant.faname}"></c:out></p>
				  		</div>
				  		<div class="detail-xinxi">
					  		 <p><c:out value="${plant.chgenara}"></c:out></p>            
				             <p style="font-style:italic;"><c:out value="${plant.genera}"></c:out></p>
				  		</div>
				  		<div class="detail-xinxi">
					  		 <p><c:out value="${plant.vnumber}"></c:out></p>            				            
				  		</div>
				  		
			  		</div>
			  	</div>
		  		
	  		</div>
  			<div class="right-layer">
  				<div class="right-layer2">
  					<div class="right-layer3">
  						<div class="right-layer4">RI值</div>
  					</div>
  					<div class="right-layer3">
  						<div class="right-layer4">用途</div>
  					</div>
  					<div class="right-layer3">
  						<div class="right-layer4">用法</div>
  					</div>
  					<div class="right-layer3">
  						<div class="right-layer4">药用部位</div>
  					</div>
  					<div class="right-layer3">
  						<div class="right-layer4">备注</div>
  					</div> 
  				</div>
  				<div class="right-layer5">
  					<div class="right-layer6">
  						<p><c:out value="${plant.rivalue}"></c:out></p>  
  					</div>
  					<div class="right-layer6">
  						<p><c:out value="${plant.purpose}"></c:out></p>  
  					</div>
  					<div class="right-layer6">
  						<p><c:out value="${plant.pusage}"></c:out></p>  
  					</div>
  					<div class="right-layer6">
  						<p><c:out value="${plant.partused}"></c:out></p>  
  					</div>
  					<div class="right-layer6">
  						<p><c:out value="${plant.remarks}"></c:out></p>  
  					</div>
  				</div>
  				
  			</div>
  		</div>
  	</div>
  	
  	
  	<!-- 正文结束 -->
  	
  	
  		<!--  友情链接和脚本 -->
   		<footer class="footer">
   			<div class=" footer-contain">
   				<div class="footer-link">
   					
   						<div class="footer-code">
   								<div class="code">
   								<img src="images/code.png" alt="二维码" style="width:120px;height:120px"> 
   								<p>扫码关注我们的公众号</p>  						
		   						</div>
		   						
		   							
		   				</div>
   					
	   					<div class="footer-linkweb">
	   						<h4 >友情链接</h4>
	   						<ul class="footer-list">
	   							<li class="item">
	   								<a href="http://www.plantphoto.cn/">中国植物图像库   http://www.plantphoto.cn/</a>
	   							</li>
	   							<li class="item">
	   								<a href="http://www.yaodaplants.com/default.aspx">中国药科大学药用植物资源数据库   http://www.yaodaplants.com/default.aspx</a>
	   							</li>
	   							<li class="item">
	   								<a href="http://db.kib.ac.cn/">中国植物物种信息数据库  http://db.kib.ac.cn/</a>
	   							</li>
	   							<li class="item">
	   								<a href="http://www.yao-yi.com/">中国瑶族医药网  http://www.yao-yi.com/</a>
	   							</li>
	   							<li class="item">
	   								<a href="http://www.cnki.net/">中国知网  http://www.cnki.net/</a>
	   							</li>
	   						</ul>
	   					</div>
   				</div>
 				
   			</div>
   			<div class="footer-copyright">
   				  <div class = "footer-copyright-p">
   					<p>©2018 URTP·江华药市药用植物数据库开发小组   版权所有</p>
   				  </div>
   				</div>
   			</footer>
   		  
  </body>
</html>