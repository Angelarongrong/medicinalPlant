
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
    
    <title>江华县药市药用植物资源数据库</title>
    
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
   
   <!-- 首页图文 -->
   
   <div class="main-contain">
   <div class="contain5" >
	                 <div class="panel-body panel-body-table" >
	               
	                  <s:if test="plantslist.size() > 0"> 
	                   <table class="table table-striped table-bordered table-hover" id="dataTables-example">            
	                    	 <thead>
	                           <tr>
	                              	  <th>序号</th>  
							          <th>学名</th>
							          <th>俗名</th>
							          <th>科</th> 
							          <th>属</th> 							  
							          <th>图片</th> 
							          
	                              </tr>
	                          </thead>
	                          
	                           
	                          <tbody>    
	                                  <s:iterator value="plantslist" var="plant" status="status">      
	                                  <tr>
	                                      <td><s:property value="#status.index+1"></s:property></td>
	                                     <td>
	                                      <s:a href="plant/plant_showDetail?plant.plid=%{plid}"><s:property value="#plant.scchname"></s:property> </s:a>              
	                                      <br/><a style="font-style:italic;"><s:property value="#plant.scname"></s:property></a>
	                                      </td>
	                                      <td><s:property value="#plant.chloname"></s:property>
	                                      <br/><s:property value="#plant.loname"></s:property></td>
	                                      <td><s:property value="#plant.chfaname"></s:property>
	                                       <br/><s:property value="#plant.faname"></s:property></td>
	                                      <td><s:property value="#plant.chgenara"></s:property>
	                                       <br/><s:property value="#plant.genera"></s:property></td>     
	                                       <td><img src = "<%=basePath %><s:property value='filepath'/>" style="width:100px;height:100px"></td>          
	                                  </tr>    
	                                   </s:iterator>                       
	                          </tbody>
	                       
	                             
	                        </table>
	                        </s:if>                  
	                        <s:else>
	                           <p>搜索结果为空</p>
	                        </s:else>
	                       
	                   </div>
	                  
   		</div>
   	</div>	
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