<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'empty.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
  var html = document.referrer.slice(34);
 if(html == "users_loginUser.action"  || html == "index.jsp"){
 alert("抱歉！暂时没有该城市的旅游路线!");
  window.history.go(-1);
 }else if (html == "login.jsp" ||html == "login.jsp?type=login"){
  alert("用户名不正确或者密码有误!");
  window.location.href="login.jsp";}
  
  </script>
  <body>
    This is my JSP page. <br>
  </body>
</html>
