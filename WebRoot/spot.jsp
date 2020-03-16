<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
     <style>
.user-img:hover{
 transform: scale(2);  
}
  </style>
  <script>
  var image = new Array();
  </script>
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Adventure</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="http://localhost:8080/ShareTravel/introduce_Route?city.cityName=" class="nav-link">Route</a></li>
	          <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
	          <li class="nav-item"><a href="login.jsp" class="nav-link">Register</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
   
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Spot</h1>
          </div>
        </div>
      </div>
    </div>
    
    
    
    <s:iterator value="introduces" var="introduce">
		<section class="" style="margin-top:50px;">
      <div class="container"  style="border-radius:10px;padding-bottom:50px;border:2px solid #ccc">
        <div class="row justify-content-center mb-5 pb-3">
          <div>
            <h2 class="mb-4" style="margin:30px auto;text-align:center;">
				<s:property value="#introduce.routeName"/>
			</h2>	 
        </div>
        </div>
              
              
   <div>
   <p style="width:100%;font-size:20px;padding-left:5%;padding-bottom:13px;border-bottom:2px solid #ccc;">
			<svg t="1584339231725" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9505" width="24" height="24">
			<path d="M512 514m-448 0a448 448 0 1 0 896 0 448 448 0 1 0-896 0Z" fill="#69B452" p-id="9506"></path><path d="M229.5 684.15h569.57a6.46 6.46 0 0 0 5.79-9.32l-140-283.21a6.46 6.46 0 0 0-9.34-2.53L225.95 672.3a6.46 6.46 0 0 0 3.55 11.85z" fill="#D1F0C7" p-id="9507"></path><path d="M224.93 684.15h573.6a6.46 6.46 0 0 0 4.26-11.32L411.06 329.47a6.46 6.46 0 0 0-10 1.83L219.23 674.67a6.46 6.46 0 0 0 5.7 9.48z" fill="#FFFFFF" p-id="9508"></path><path d="M573.59 323.34m-33.04 0a33.04 33.04 0 1 0 66.08 0 33.04 33.04 0 1 0-66.08 0Z" fill="#D1F0C7" p-id="9509"></path></svg>
						   景色预览</p>           
 <div id="demo" class="carousel slide" data-ride="carousel" style="margin:auto;width:70%;border-radius:30px;">
 
  <!-- 轮播图片 -->
  <div class="carousel-inner" id="carousel-inner">
  </div>
 
  <!-- 左右切换按钮 -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
 
</div>
      </div>        
              
              
              
        <div class="row ftco-animate">
		 <p style="width:100%;font-size:20px;padding-left:5%;padding-bottom:13px;border-bottom:2px solid #ccc;">
			<svg t="1584338712798" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6587" width="24" height="24">
			<path d="M518.4 684.8v-213.333333h211.2c34.133333 0 53.333333-38.4 34.133333-66.133334L473.6 17.066667c-17.066667-21.333333-49.066667-21.333333-66.133333 0L115.2 405.333333c-21.333333 27.733333 0 66.133333 34.133333 66.133334h211.2V1024h157.866667c0-219.733333 177.066667-377.6 396.8-377.6v-138.666667c-155.733333 0-298.666667 68.266667-396.8 177.066667z" p-id="6588" fill="#efb336"></path></svg>
			   路线概括</p>
        	<div style="width:70%;margin:auto;">
        	<span style="margin:25px auto;border-radius:50%;background:#ccc;width:50px;height:50px;line-height:50px;text-align:center;float:left;">D1</span>
          <div style="margin:5px auto;padding:30px 10px;font-size:16px;float:left;">					
			<s:property value="#introduce.routeway"/></div>
			</div>
        <p style="width:100%;font-size:20px;padding-left:5%;padding-bottom:13px;border-bottom:2px solid #ccc;">
        <svg t="1584335850465" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2239" width="24" height="24">
        <path d="M896.395264 755.67616c-17.882112 111.853568-148.354048 120.735744-148.354048 120.735744L509.718528 876.411904l0-163.47136 284.676096-6.500352c-119.942144-78.14656-40.469504-214.646784-40.469504-214.646784-115.972096-88.853504-31.44192-224.441344-31.44192-224.441344-117.17632-87.853056-36.030464-204.823552-36.030464-204.823552L509.718528 96.293888 509.718528 0l-53.999616 0 0 106.58816-201.793536 38.55872c94.000128 95.440896-3.941376 187.0592-3.941376 187.0592 76.853248 105.088-11.588608 187.175936-11.588608 187.175936 57.647104 116.50048-37.61664 200.441856-37.61664 200.441856l254.941184-5.736448 0 162.32448L14.984192 876.411904 194.894848 1024l642.9696 0 107.971584-214.67648 63.028224 0 0-53.648384L896.395264 755.675136 896.395264 755.67616zM896.395264 755.67616" p-id="2240" fill="#1296db"></path></svg>
        	游玩攻略</p>
        <p style="margin:auto;padding:30px 15%;color:#000;font-size:16px;">		
			<s:property value="#introduce.introduce"/></p>
		<p style="width:100%;font-size:20px;padding-left:5%;padding-bottom:13px;border-bottom:2px solid #ccc;">
        <svg t="1584336968845" class="icon" viewBox="0 0 1204 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5406" width="24" height="24">
        <path d="M791.190588 588.860235l-140.167529 126.313412-168.96-226.424471a34.695529 34.695529 0 0 0-52.705883-3.614117l-418.454588 426.465882a35.177412 35.177412 0 0 0 24.877177 59.632941c8.975059 0 18.010353-3.493647 24.816941-10.480941L450.56 563.380706l167.514353 224.436706a34.755765 34.755765 0 0 0 51.2 5.059764l142.576941-128.542117 244.073412 271.962353c12.890353 14.336 34.936471 15.480471 49.27247 2.529882a35.117176 35.117176 0 0 0 2.469648-49.513412L840.342588 591.510588a34.695529 34.695529 0 0 0-49.152-2.590117z m46.501647-427.670588a34.936471 34.936471 0 0 0 34.936471-35.056941V35.358118a34.936471 34.936471 0 1 0-69.812706 0v90.774588a34.936471 34.936471 0 0 0 34.936471 35.056941z m0 343.341177c74.752 0 135.529412-61.138824 135.529412-136.252236a136.071529 136.071529 0 0 0-135.529412-136.252235 136.071529 136.071529 0 0 0-135.529411 136.252235 136.011294 136.011294 0 0 0 135.529411 136.252236z m0-202.390589c36.321882 0 65.837176 29.696 65.837177 66.138353 0 36.442353-29.515294 66.138353-65.837177 66.138353a66.078118 66.078118 0 0 1-65.776941-66.138353c0-36.442353 29.515294-66.138353 65.776941-66.138353zM506.458353 392.975059h90.352941a34.936471 34.936471 0 0 0 34.876235-35.056941 34.936471 34.936471 0 0 0-34.93647-35.056942H506.518588a34.936471 34.936471 0 0 0-34.876235 35.056942 34.936471 34.936471 0 0 0 34.936471 35.056941zM1168.926118 322.861176h-90.352942a34.936471 34.936471 0 0 0-34.816 35.056942 34.936471 34.936471 0 0 0 34.876236 35.056941h90.352941a34.936471 34.936471 0 0 0 34.816-35.056941 34.936471 34.936471 0 0 0-34.876235-35.056942zM642.710588 221.846588a34.695529 34.695529 0 0 0 49.272471 0 35.177412 35.177412 0 0 0 0-49.573647l-70.475294-70.896941a34.755765 34.755765 0 0 0-49.392941 0 35.177412 35.177412 0 0 0 0 49.573647l70.595764 70.896941z m340.690824 292.864a35.177412 35.177412 0 0 0 0 49.573647l70.535529 70.896941a34.695529 34.695529 0 0 0 49.332706 0 35.177412 35.177412 0 0 0 0-49.573647l-70.535529-70.896941a34.755765 34.755765 0 0 0-49.332706 0z m-345.871059 0l-34.093177 34.334118a35.177412 35.177412 0 0 0 24.696471 59.753412c9.216 0 18.070588-3.614118 24.636235-10.24l34.093177-34.334118a35.177412 35.177412 0 0 0 0-49.513412 34.755765 34.755765 0 0 0-49.332706 0z m370.507294-282.624c9.276235 0 18.130824-3.614118 24.696471-10.24l70.475294-70.896941a35.177412 35.177412 0 0 0 0-49.573647 34.755765 34.755765 0 0 0-49.272471 0l-70.475294 70.896941a35.177412 35.177412 0 0 0 24.576 59.813647z" p-id="5407" fill="#7FFFAA"></path></svg>        	景点简介</p>
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl" id="place-wrapper">
            
            <s:iterator value="#introduce.places" var="place">	
            <div class="item" style="background-color:rgba(0,0,0,0.3);padding:50px 0;">
                <div class="testimony-wrap p-4 p-5">
                  <div class="user-img mb-5" style="background-image: url(<s:property value="#place.images"/>)">
					<script>image.push('<s:property value="#place.images"/>');</script>
                  </div>
                  <div class="text">
                    <p class="name"><s:property value="#place.spotname"/></p>
                    <p class="mb-5"><s:property value="#place.introduce"/></p>                    
                    <span class="position">营业时间:<s:property value="#place.times"/></span>
                  </div>
                </div>                
              </div>
              </s:iterator>
            </div>
          </div>
        </div>
      </div>
    </section>
</s:iterator>
    <footer class="ftco-footer ftco-bg-darklass="container">
            <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Adventure</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Online enquiry</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
                <li><a href="#" class="py-2 d-block">General enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                <li><a href="#" class="py-2 d-block">Refund policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li><a href="#" class="py-2 d-block">Wildlife</a></li>
                <li><a href="#" class="py-2 d-block">Honeymoon</a></li>
                <li><a href="#" class="py-2 d-block">Nature</a></li>
                <li><a href="#" class="py-2 d-block">Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Colorlib  All rights reserved | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
  </p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>

  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>
<script type="text/javascript">
function add_lunbo(i) {
        var e = document.getElementById("carousel-inner");
        var div = document.createElement("div");
        var img = document.createElement("img");
        div.className = "carousel-item";
       if(i==0){div.classList.add("active");}
        img.src=image[i];
        img.style.height='300px';
        img.style.width='100%';
        div.appendChild(img);
        e.appendChild(div);
    }
    
     for(var i=0;i<image.length;i++){
     	add_lunbo(i);
    }
		
		</script>