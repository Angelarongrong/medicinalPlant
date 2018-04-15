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
			  			<li><a href="plant/plant_showPlant2">数据编辑</a></li>
			  			<li class="active"><a href="otherinfo.jsp">相关信息</a></li>
			  			<li><a href="aboutus.jsp">联系我们</a></li>			
			  		</ul>
	  			</div>	
  		   </div>
  			<!-- 导航结束--> 
  	</div>
  	</div>
  	<!-- 页面顶部结束 -->
   
   <!-- 首页图文 -->
   <div class=" contain3">
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
							            <img src="images/jianghua2.jpg" alt="First slide" style="width:100%;height:460px">
							            <div class="carousel-caption">江华图片1</div>
							        </div>
							        <div class="item">
							            <img src="images/jianghua1.jpg" alt="Second slide" style="width:100%;height:460px" >
							            <div class="carousel-caption">江华图片2</div>
							        </div>
							        <div class="item">
							            <img src="images/jianghua3.jpg" alt="Third slide" style="width:100%;height:460px">
							            <div class="carousel-caption">江华图片3</div>
							        </div>
							    </div>			
				</div>
   			</div>
   		</div>
   		<div class="words">
   			<p>	   江华瑶族自治县是湖南省永州市下辖县，位于湘、粤、桂三省（区）结合部，分别与广东、广西各三个县（市、区）相邻
   					，南北长77.92公里，东西宽72.5公里 ，总面积3248平方公里，是以瑶族为主、以壮族、汉族、苗族等十余个民族为辅聚居的少数民族自治县，
   				是永州市唯一的少数民族自治县，是湖南省唯一的瑶族自治县，是全国13个瑶族自治县中瑶族人口最多的县，被誉为“神州瑶都”。</p>
   					
   			<p>由于地处湘、粤、桂毗邻结合部的独特地理位置和自然环境条件，加上有着2000多年的悠久建制历史，江华是瑶民族历史上大规模山地迁徏转移的重要聚居地和中转站，
   				亦是瑶文化的重要发源地之一，其瑶医药文化底蕴与资源十分厚重、丰富。</p>
   			<p> 江华县城药市是湖南及周边毗邻瑶族地区规模最大的县城药市，在每年农历五月初一左右开始，五月初五端午节达到高潮，并持续至五月十五日的“大端午”。
   				药市上展出卖的各种珍贵药材品种上有600多种，赶端午药市是江华县瑶、壮、汉族人民欢度端午佳节的独特传统，
   				除了出售、购买各种药物之外，还借此机会互通信息、共叙友情，一些瑶医、药农、民间医生利用药市机会交流识药用药经验、宣传、介绍瑶医瑶药知识。
   			</p>
   		</div>   
   </div>
   
   <div class="contain4">
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
   					<h4>历史背景</h4>
   					<p>“南岭无山不有瑶”，由于历史的原因，瑶胞们被迫长期生存在环境条件极为严酷恶劣的崇山峻岭中，
   						过着刀耕火种、“吃尽此山又它山”的原始游耕狩猎生活，贫瘠、封闭，出行艰难、交往与联系极其不便，
   						使民间疗疾祛疫、养生康复和天然药物的识辨、采集、加工、应用等的知识、技术、方法及其经验得到不断的总结、</p>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2">
   				
   					<p>普及和发展、提高，培养了瑶胞们用土方土法就地取材以预防和治疗疾病的本领并相沿成习。
   					瑶医药文化的发展，不仅建立和完善了适应瑶民族生存环境、符合瑶民族生活实际的独特医药体系，
   					  而且还形成了许许多多形式各异、内容丰富、独具特色的強身健体、养生康复民族民间医药习俗（如瑶族在端午节用菖蒲、艾叶、雄黄驱邪辟瘟、阻虫杀毒，等等），“端午药市”即是其中之一。</p>
   				</div>
   			</div>
   		</div>
   		<div class="row2">
   			<div class="box2">
   				<div class="punchbox2">
   					<h4>瑶药传说</h4>
   					<p>瑶医药是瑶族人民在数千年艰苦卓绝的生存与生活环境中创造并不断完善、提高和发展起来的古老而独特的医药体系，她与瑶民族一样有着非常悠久的历史。
   					伏羲对医理医术和疾病诊治的创造与总结比汉族中医药首开先河之作的《黄帝內经》要早近3000年左右。而据史籍的相关记载，伏羲氏又与瑶民族的祖先“九黎”（蚩尤）、
   					
   					</p>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2"> 					
   					<p>“ 三苗” 有着千丝万缕的渊源水乳关系。而炎帝神农氏更是我国古代农耕医药文化的伟大先行者。史籍中对与此有关的内容记载甚多，如
   					：“神农尝百草，日遇七十毒，得茶而解之”（《神农本草经》）；“炎帝神农氏……始教天下耕种五谷而食之……尝味草木，尝药疗疾，救伤之命”，
   					“ 始尝百草，始有医药”（《帝王世纪》）……等等。</p>
   				</div>
   			</div>
   			<div class="box2">
   				<div class="punchbox2">
   					<p>
   					
   					除了伏羲氏、神农氏之外，在瑶医药的创建中还有一个重要的历史人物就是蚩尤。
   					传说“蚩尤传神药，神术医百病”。按史籍之载，“伏羲后有炎帝”，而神农氏是“ 始尝百草，始有医药” 的“开天圣人”，且蚩尤又是神农氏的“族中” 人，
   					那么，作为后人的蚩尤将先辈们所创造和积累的医理、药理与医术、经验传承、掌握过来并用之于为芸芸众生诊治疾病、解除病痛之说应非空穴来风。</p>
   				</div>
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