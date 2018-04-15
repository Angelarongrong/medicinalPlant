<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>数据编辑页</title>
   <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index1.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
	<link rel="stylesheet" href="css/buttons.css">
 	 
		<link type="text/css" rel="stylesheet" href="less/reset.css">
		<link type="text/css" rel="stylesheet" href="less/slide.css">
		<link type="text/css" rel="stylesheet" href="less/index.css">
		
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
 	 <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>	
			
	
	
	

  </head>
  
  <body>
  	<!-- 页面顶部开始 -->
  	<div class="top">
  		<div class="row">
  		<!-- 登陆注册 -->
  			<div class="header-login ">
	  		   <div class="top-table">  		   		
	  		   		<ul>	  		
	  		   			<li><a class="top-table-font" href="#">注册</a></li>
	  		   			<li><a class="top-table-font" href="#">登录</a></li>  		   			
	  		   		</ul>
	  		   </div> 
  		   </div> 
  		   <!-- 登陆注册结束 --> 
  		<!-- 1.标题和登录按钮 -->
  		<div class="top-contain ">
  			<div class="header-title">
  				<h2>江华县药市</h2>
  				<h1>药用植物资源数据库</h1>
  				<a>共收录了320条药用植物信息</a>
  			</div>
  			
  		   <!-- 1.结束 -->     
  		   <!-- 搜索栏开始-->   
  		    <div class="search ">
		  		<div class="container1-1">
		  			<div class="input-group " style="margin-top:0px positon:relative">  
		      			 <input type="text" class=" search clearable" placeholder="搜索植物，例如：耳草" / >  
		       				<span class="input-group-btn">  
		           			<button class="btn btn-info btn-search"><i class="fa fa-search"></i></button>             
		        			</span>  
		 			</div>  
		  		</div>
  			</div>
  			<!-- 搜索栏结束--> 
  			</div>
  			<!-- 导航开始--> 
  			<div class=" contain2 col-xs-12">	
	  			<div class="menu">  
			   		<ul>  					
			  			<li><a href="plant/plant_showPlant">主页</a></li>
			  			<li><a href="plant/plant_showPlant1">植物检索</a></li>
			  			<li class="active"><a href="plant/plant_showPlant2">数据编辑</a></li>
			  			<li><a href="otherinfo.jsp">相关信息</a></li>
			  			<li><a href="aboutus.jsp">联系我们</a></li>			
			  		</ul>
	  			</div>	
  		   </div>
  			<!-- 导航结束--> 
  	</div>
  	</div>
  	<!-- 页面顶部结束 -->
  	
  	<div class="edit-contain">
  		<div class="edit-menu">
  			<ul>
  			<li class="normal"><a href="add.jsp" class="add">添加植物信息</a></li>
		  	<li class="active1"><a href="plant/plant_showPlant2" class="edit">修改已有数据</a></li>
		  	</ul>
  		</div>
  		
  		
  	<main class="container-fluid">
      <div class="row">
         <div class="col-md-12">
		   
		      <div class="panel panel-info1">
	                 <s:form action="plant/plant_showPlant1" method="post">
	                 <div class="panel-body panel-body-table" >
	                      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                         <thead>
	                           <tr>
	                              	  <th>序号</th> 
							          <th>学名</th>
							          <th>俗名</th>
							          <th>编号</th> 
							          <th>操作</th> 
							           
							         
							          
	                              </tr>
	                          </thead>
	                          <tbody>
	                              <s:iterator value="plantslist" var="plant" status="status">
	                                  <tr>
	                                      <td><s:property value="#status.index+1"></s:property></td>
	                                      <td><s:property value="#plant.scchname"></s:property>
	                                      <br/><a style="font-style:italic;"><s:property value="#plant.scname"></s:property></a></td>
	                                      <td><s:property value="#plant.chloname"></s:property>
	                                      <br/><s:property value="#plant.loname"></s:property></td>
	                                      <td><s:property value="#plant.vnumber"></s:property></td>
	                                      <td><a href="plant/plant_showEdit?plant.plid=<s:property value='plid'/>" class="edit">编辑   </a>
	                                      	  <a href="plant/plant_deletePlant?plant.plid=<s:property value='plid'/>" class="delete">  删除</a>
	                                      </td>
	                                      
	                                      
	                                  </tr>
	                              </s:iterator>
	                          </tbody>
	                        </table>
	                   </div>
	                   </s:form>
	            </div>
	               
		       
	       </div>
	   </div>
	</main>
	
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/jquery.dataTables.js"></script>
    <script src="<%=basePath%>js/dataTables.bootstrap.js"></script>
    <script>
       $(document).ready(function () {
           $('#dataTables-example').dataTable({
			   "language": {
                 "lengthMenu": "每页 _MENU_ 条记录",
                 "zeroRecords": "没有找到记录",
                 "info": "第 _PAGE_ 页 ( 共 _PAGES_ 页 )",
                 "infoEmpty": "无记录",
                 "infoFiltered": "(从 _MAX_ 条记录过滤)",
				 "sInfoPostFix": "",
				 "sSearch": "搜 索 : ",
				 "sUrl": "",
				 "sEmptyTable": "表中数据为空",
				 "sLoadingRecords": "载入中...",
				 "sInfoThousands": ",",
				 "oPaginate": {
					"sFirst": "首页",
					"sPrevious": "上页",
					"sNext": "下页",
					"sLast": "末页"
				 },
				 "oAria": {
				 "sSortAscending": ": 以升序排列此列",
				 "sSortDescending": ": 以降序排列此列"
			     },
				 
             }
		   });
       });
    </script>
  	</div>
  	
  	
  	 <!--  友情链接和脚本 -->
   		<footer class="footer">
   			<div class=" footer-contain">
   				<div class="footer-link">
   					
   						<div class="footer-code">
   								<div class="code">
   								<img src="images/code.png" alt="二维码" style="width:120px;height:120px">   						
		   						</div>
		   						<p>扫码关注我们的公众号</p>
		   							
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
   				<div class="footer-copyright">
   					<p>©2018 URTP·江华药市药用植物数据库开发小组   版权所有</p>
   				</div>
   			</div>
   			</footer>
  </body>
</html>