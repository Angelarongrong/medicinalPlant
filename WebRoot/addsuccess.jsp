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
    
    <title>添加成功页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="2;url=add.jsp">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	添加成功！ <br>
    	<s:form>
    		<table>
    			<c:forEach var="plant" items="${plantslist}" varStatus="status">
    				<tr>
    					<td>序号</td>
    					<td>学名（拉丁名）</td>
    					<td>俗名</td>
    					<td>科</td>
    					<td>属</td>
    					<td>用途</td>
    					<td>用法</td>
    					<td>药用部位</td>
    					<td>编号</td>
    					<td>RI值</td>
    					<td>备注</td>
    				</tr>
    				<tr>
    					<td><c:out value="${status.index+1}"></c:out></td>
    					<td><c:out value="${plant.scname}"></c:out></td>
    					<td><c:out value="${plant.loname}"></c:out></td>
    					<td><c:out value="${plant.faname}"></c:out></td>
    					<td><c:out value="${plant.genera}"></c:out></td>
    					<td><c:out value="${plant.purpose}"></c:out></td>
    					<td><c:out value="${plant.pusage}"></c:out></td>
    					<td><c:out value="${plant.partused}"></c:out></td>
    					<td><c:out value="${plant.vnumber}"></c:out></td>
    					<td><c:out value="${plant.rivalue}"></c:out></td>
    					<td><c:out value="${plant.remarks}"></c:out></td>
    				</tr>
    			</c:forEach>
    		</table>
    	</s:form>
  </body>
</html>
