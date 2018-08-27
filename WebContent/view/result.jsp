<%@page import="pojo.Member"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
 <head>
<title>Wonderf真爱网-结果</title>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>static/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath%>static/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Custom Theme files -->
<link href="<%=basePath%>static/css/style.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="<%=basePath%>static/css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
</head>
<body>
<!-- ============================  Navigation Start =========================== -->
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
					<a href="#" class="icon-home"></a>
					<ul>
						<li><a href="<%=basePath%>view/login.jsp">会员登录</a></li>
					    <li><a href="<%=basePath%>view/register.jsp">会员注册</a></li>
					    <li><a href="<%=basePath%>view/index.jsp" onclick="out()">会员离开</a></li>
					</ul>
				</li>
			   </ul>
             </nav>
           </div>
           <a class="brand" href="<%=basePath%>view/index.jsp"><img src="<%=basePath%>/static/images/logo.png" alt="logo"></a>
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"></a>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="<%=basePath%>view/index.jsp">主页</a></li>
		            <li><a href="<%=basePath%>view/inbox.jsp">浏览会员</a></li>
		    		<li> <a href="<%=basePath%>view/uploadpic.jsp">上传照片</a></li>
					<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人中心<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                 <li ><a href="<%=basePath%>view/updateAll.jsp">修改信息</a></li>
		                <li ><a href="<%=basePath%>view/updatepwd.jsp">修改密码</a></li>  
		              </ul>
		            </li>
		            <li> <a href="<%=basePath%>view/about.jsp">关于我们</a></li>
		            <li class="last"><a href="<%=basePath%>view/contact.jsp">联系我们</a></li>
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
    <%if(session.getAttribute("user")!=null)
    	if(!session.getAttribute("user").equals("0")){
    	Member member=(Member)session.getAttribute("user");%>
        <div id="login_name">欢迎您：<%=member.getLogname()%></div>
    <% }%>
<!-- ============================  Navigation End ============================ -->
<div id="result">
<%String res=(String)session.getAttribute("res"); %>
<c:set var="res" value=" <%=res%>" ></c:set>
<c:set var="res1" value="注册失败！！！" ></c:set>
<c:choose >
<c:when test="${sessionScope.res eq '注册失败！！！'}">
 <%response.setHeader("refresh", "3;url=register.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/register.jsp">三秒后跳转注册页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:when test="${sessionScope.res eq '登录失败！！！'}">
 <%response.setHeader("refresh", "3;url=login.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/login.jsp">三秒后跳转登录页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:when test="${sessionScope.res eq '修改密码成功！！！'}">
 <%response.setHeader("refresh", "3;url=view/index.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/index.jsp">三秒后跳转主页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:when test="${sessionScope.res eq '旧密码不对！！！'}">
 <%response.setHeader("refresh", "3;url=updatepwd.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/updatepwd.jsp">三秒后跳转修改密码页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:when test="${sessionScope.res eq '修改信息成功！！！'}">
 <%response.setHeader("refresh", "2;url=view/index.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/index.jsp">三秒后跳转主页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:when test="${sessionScope.res eq '修改信息失败！！！'}">
 <%response.setHeader("refresh", "3;url=updateAll.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/updateAll.jsp">三秒后跳转修改信息页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:when test="${sessionScope.res eq '请先登录！！！'}">
 <%response.setHeader("refresh", "3;url=login.jsp"); %>  
<h3><%=res %></h3><br>
<h4><a href="<%=basePath%>view/login.jsp">三秒后跳转登录页如果没有跳转，那我也没办法!!!</a></h4>
</c:when>
<c:otherwise>
 <%response.setHeader("refresh", "3;url=index.jsp"); %>  
<h4><a href="<%=basePath%>view/index.jsp">三秒后跳转主页如果没有跳转，那我也没办法!!!</a></h4></c:otherwise>
</c:choose>
<div id="img"><img  src="<%=basePath%>static/images/s3.jpg"></div>
</div>
<div class="footer">
    	<div class="container">
    		<div class="col-md-4 col_2">
    			<h4>About Us</h4>
    			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris."</p>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Help & Support</h4>
    			<ul class="footer_links">
    				<li><a href="#">24x7 Live help</a></li>
    				<li><a href="contact.jsp">Contact us</a></li>
    				<li><a href="#">Feedback</a></li>
    				<li><a href="faq.jsp">FAQs</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Quick Links</h4>
    			<ul class="footer_links">
    				<li><a href="privacy.jsp">Privacy Policy</a></li>
    				<li><a href="terms.jsp">Terms and Conditions</a></li>
    				<li><a href="services.jsp">Services</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Social</h4>
    			<ul class="footer_social">
				  <li><a href="#"><i class="fa fa-facebook fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-twitter fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-google-plus fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-youtube fa1"> </i></a></li>
			    </ul>
    		</div>
    		<div class="clearfix"> </div>
    		<div class="copy">
		       <p>Copyright &copy; 2015.Company name All rights reserved.</p>
	        </div>
      </div>
</div>
</body>
</html>	
<script>
function out() {
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				alert("成功退出！！！");
			}
		}	
	}
	xhr.open("GET", "${pageContext.request.contextPath}/Outcontroller",true);
	xhr.send(null);
}
</script>