<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width-device-width,initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="sie-edge" />
<link rel="stylesheet" type="text/css" href="css/login.css">
<title>登录注册页面</title>

<!--图标库-->
<script src="https://unpkg.com/ionicons@4.2.2/dist/ionicons.js"></script>

</head>
<body>
<div class="container" id="container">
  <div class="form-container sign-up-container">
    <s:form action="users_addUser">
      <h1>电子邮箱注册</h1>
      <div class="social-container"> <a href="#" class="social">
        <ion-icon name="logo-facebook"></ion-icon>
        </a> <a href="#" class="social"> 
        <ion-icon name="logo-googleplus"></ion-icon>
        </a> <a href="#" class="social">
        <ion-icon name="logo-linkedin"></ion-icon>
        </a> </div> 
      <s:textfield name="user.username" placeholder="用户名(长度为6-14位)"/>
      <s:textfield name="user.email" placeholder="邮箱"/>
      <s:password name="user.password" placeholder="密码(长度为6-16位)"/>
      <%-- <s:password name="user.repassword" placeholder="确认密码"/> --%>
      <s:submit value="注册" cssStyle="background:#ff4b2b;color:#fff;font-weight:bold;width:120px;border-radius:20px;"/>     
    </s:form>
  </div>
  <div class="form-container sign-in-container">
    <s:form action="users_loginUser">
      <h1>第三方登录</h1>
      <div class="social-container"> <a href="#" class="social">
        <ion-icon name="logo-facebook"></ion-icon>
        </a> <a href="#" class="social">
        <ion-icon name="logo-googleplus"></ion-icon>
        </a> <a href="#" class="social">
        <ion-icon name="logo-linkedin"></ion-icon>
        </a> </div>
      <span>或用邮箱登录</span>
      <s:textfield name="user.email" placeholder="邮箱"/>
      <s:password name="user.password" placeholder="密码"/>
      <s:submit value="登录" cssStyle="background:#ff4b2b;color:#fff;font-weight:bold;width:120px;border-radius:20px;"/>
    </s:form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>欢迎回来</h1>
        <p>与我们保持联系请登录您的个人信息</p>
        <button class="ghost" id="signIn">登录</button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>欢迎光临</h1>
        <p>输入您的个人资料，并与我们一起开始旅程</p>
        <button class="ghost" id="signUp">注册</button>
      </div>
    </div>
  </div>
</div>

<script  src="js/script.js"></script> 
<script type="text/javascript">
 function getQueryVariable(variable)/*获取get参数*/
{
       var query = window.location.search.substring(1);
       var vars = query.split("&");
       for (var i=0;i<vars.length;i++) {
               var pair = vars[i].split("=");
               if(pair[0] == variable){return pair[1];}
       }
       return(false);
}
var html = document.referrer.slice(34);
 if(html == "login.jsp" || html == "users_addUser.action"){
 document.getElementById("container").classList.add("right-panel-active");
 if(getQueryVariable('type')=='login'){
 document.getElementById("container").classList.remove("right-panel-active");
 }
 }
 
 
</script>	
</body>
</html>

