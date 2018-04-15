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
			  			<li><a href="#">相关信息</a></li>
			  			<li><a href="#">联系我们</a></li>			
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
		      <s:form action="plant/plant_editPlant?plant.plid=plid" cssClass="form-horizontal" enctype="multipart/form-data">
		      <s:hidden name="plant.plid" />
		      <div class="panel panel-success">
			       <div class="panel-heading">
		               <h4 class="panel-title">编 辑 植 物 信 息</h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">学名  (Scientific name)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.scname" class="form-control input-sm" 
                               value="<s:property value='plant.scname'></s:property>" required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">学名  (中文名)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.scchname" class="form-control input-sm"
                               value="<s:property value='plant.scchname'></s:property>"  required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">俗名  (Local name)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.loname" class="form-control input-sm" 
                               value="<s:property value='plant.loname'></s:property>"  required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">俗名  (中文名)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.chloname" class="form-control input-sm" 
                               value="<s:property value='plant.chloname'></s:property>"  required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">科  (Family name)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.faname" class="form-control input-sm"
                               value="<s:property value='plant.faname'></s:property>"   required>
                            </div>
			           </div>
			            <div class="form-group">
			                <label class="control-label col-md-3">科  (中文名)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.chfaname" class="form-control input-sm" 
                               value="<s:property value='plant.chfaname'></s:property>"  required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">属  (Genera)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.genera" class="form-control input-sm" 
                               value="<s:property value='plant.genera'></s:property>"  required>
                            </div>
			           </div>
			            <div class="form-group">
			                <label class="control-label col-md-3">属  (中文名)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.chgenara" class="form-control input-sm" 
                               value="<s:property value='plant.chgenara'></s:property>"  required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">用途  (Purpose)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.purpose" class="form-control input-sm"  
                               value="<s:property value='plant.purpose'></s:property>" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">用法  (Usgae)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.pusage" class="form-control input-sm" 
                               value="<s:property value='plant.pusage'></s:property>"  required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">药用部位  (Part used)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.partused" class="form-control input-sm" 
                               value="<s:property value='plant.partused'></s:property>" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">编号  (Voucher Number)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.vnumber" class="form-control input-sm"  
                               value="<s:property value='plant.vnumber'></s:property>" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">RI值  (RI value)</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.rivalue" class="form-control input-sm"  
                               value="<s:property value='plant.rivalue'></s:property>" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">备注</label>
			                <div class="col-md-8">
                              <input type="text" name="plant.remarks" class="form-control input-sm"  
                              value ="<s:property value='plant.remarks'></s:property>" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">植物图片</label>
			                <div class="col-md-4">
			                  <div class="fileupload fileupload-new" data-provides="fileupload">
                                  <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">               
                                    <img src = "<%=basePath %><s:property value='plant.filepath'/>" style="max-width: 200px; max-height:150px; line-height: 20px;">
                                  </div>
                                  <div class="fileupload-preview fileupload-exists thumbnail" 
                                   style="max-width: 200px; max-height:150px; line-height: 20px;">
                                  </div>
                                  <div>
                                      <span class="btn btn-file btn-primary">
                                        <span class="fileupload-new">换张图片</span>  
                                         <span class="fileupload-exists">换张图片</span>
                                         <input type="file" name="plantPhoto"/>
                                      </span>
                                      <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                  </div>
                              </div>
                            </div>
			           </div>   

			           <div class="form-group col-md-3">
				          <button type="submit" class="btn btn-success pull-right">提  交 </button>
				       </div>
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
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
