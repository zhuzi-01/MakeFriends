<%@page import="pojo.Member"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
 <head>
<title>Wonderf真爱网-浏览会员</title>
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
           <a class="brand" href="<%=basePath%>view/index.jsp"><img src="<%=basePath%>static/images/logo.png" alt="logo"></a>
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
<div class="grid_3"  style=" padding-top: 50px;">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="<%=basePath%>view/index.html"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">会员浏览</li>
     </ul>
   </div>
   <div class="col-md-3 col_5">
   	 <ul class="match_box">
   	 	<h4>Matches</h4>
   	 	<li><a href="#">Mutual Matches</a></li>
   	 	<li><a href="#">Profiles yet to be viewed</a></li>
   	 	<li><a href="#">Mutual Matches</a></li>
   	 </ul>
   	 <img src="<%=basePath%>static/images/v1.jpg" class="img-responsive" alt=""/>
     <ul class="menu">
		<li class="item1"><h3 class="m_2">Show Profiles Created</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">within a week (2) </a></li>
			<li class="subitem2"><a href="#">within a month (4)</a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Profile type</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">with Photo (3) </a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Marital Status</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Unmarried (2) </a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Mother Tongue</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">English </a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Education</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Bachelors-Engineering </a></li>
			<li class="subitem1"><a href="#">Masters-Engineering </a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Occupation</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Engineer-Non IT (2) </a></li>
			<li class="subitem1"><a href="#">Software Professional (3)</a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Physical Status</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Normal (2) </a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Eating Habits</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Non Vegetarian (3)</a></li>
			<li class="subitem1"><a href="#">Vegetarian (2)</a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Smoking</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Not Specified (3)</a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Drinking</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Not Specified (3)</a></li>
			<li class="subitem1"><a href="#">Never Drinks (3)</a></li>
		  </ul>
		</li>
		<li class="item1"><h3 class="m_2">Profile Created by</h3>
		  <ul class="cute">
			<li class="subitem1"><a href="#">Self (1)</a></li>
		  </ul>
		</li>
	  </ul>
   </div>
   <div class="col-md-9 members_box2" style="top: -55px;">
   	   <h3>会员浏览</h3>
   	   <p>&emsp;&emsp;找对象,上Wonderf真爱网;Wonderf真爱网-,只为找对象。Wonderf真爱网-:正规婚恋、只为找对象服务;网站真实、安全、成功率高;会员写信、看信、留言免费;收费很低、且可赚积分消费.<br/>同性才是真爱，找真爱就上Wonderful真爱网</p>
       <div class="col_4">
		    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			   <ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
				  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">All</a></li>
				  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">New</a></li>
				  <li role="presentation"><a href="#profile1" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Read</a></li>
				  <li role="presentation"><a href="#profile2" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Accepted</a></li>
				  <li role="presentation"><a href="#profile2" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Not Interested</a></li>
			   </ul>
			   <div id="myTabContent" class="tab-content">
			   		<ul class="pagination pagination_1" style="margin-top: -17px";>
 			    <li id="li1"><a  onclick="getdata(this)">1</a></li>
 			    <li id="li2"><a  onclick="getdata(this)">2</a></li>
	  			<li id="li3"><a  onclick="getdata(this)">3</a></li>
	  			<li id="li4"><a  onclick="getdata(this)">4</a></li>
	  			<li id="li5"><a  onclick="getdata(this)">5</a></li>
	  			<li><a >...</a></li>
	  			<li><a >Next</a></li>
        		</ul>
        		<div class="clearfix"> </div>
			   
				  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				    
				   

	                <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/p13.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/p15.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/p14.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/p16.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	  <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/p17.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
				  </div>
				  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				    <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					</div>
					<div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
				 </div>
				 <div role="tabpanel" class="tab-pane fade" id="profile1" aria-labelledby="profile-tab">
				    <div class="terms">
            		  <h2>Your Privacy Settings</h2>
					   <div class="terms_top">
						<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
						<ol class="terms_list">
							<li>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum".</li>
							<li>Lusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</li>
							<li>Praesentium voluptatum deleniti atque corrupti quos</li>
							<li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</li>
							<li>Mentum eleifend enim a feugiat distinctio lor</li>
						</ol>
						<h4>There are many variations of passages</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Integer sed arcu. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non <a href="#">libero consectetur adipiscing</a> elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
						<p><strong>Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non sit amet, consectetur adipiscing elit. Ut adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque lorem ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat <a href="#">consectetur adipiscing elit</a>.</strong></p>
					  </div> 	
		           </div>
				 </div>
				 <div role="tabpanel" class="tab-pane fade" id="profile2" aria-labelledby="profile-tab">
				    <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					  <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="#"><img src="<%=basePath%>static/upload/s3.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="#">Lorem (2547189)</a></h6>
							<ul class="top-btns">
							  <li><a href="#" class="fa fa-facebook"></a></li>
							  <li><a href="#" class="fa fa-twitter"></a></li>
							  <li><a href="#" class="fa fa-google-plus"></a></li>
							</ul>
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Reliogion</span> : Hindu | <span class="m_1">Education</span> : B.Tech | <span class="m_1">Occupation</span> : Software Professional<br><a href="#" class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>
					   	   <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
				 </div>
				 <div role="tabpanel" class="tab-pane fade" id="profile3" aria-labelledby="profile-tab">
				    <div class="terms">
            		  <h2>Your Privacy Settings</h2>
					   <div class="terms_top">
						<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
						<ol class="terms_list">
							<li>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum".</li>
							<li>Lusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</li>
							<li>Praesentium voluptatum deleniti atque corrupti quos</li>
							<li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</li>
							<li>Mentum eleifend enim a feugiat distinctio lor</li>
						</ol>
						<h4>There are many variations of passages</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Integer sed arcu. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non <a href="#">libero consectetur adipiscing</a> elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
						<p><strong>Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non sit amet, consectetur adipiscing elit. Ut adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque lorem ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat <a href="#">consectetur adipiscing elit</a>.</strong></p>
					  </div> 	
		           </div>
				 </div>
			 </div> 
		  </div>
	   </div>
    </div>
   <div class="clearfix"> </div>
  </div>
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
    				<li><a href="contact.html">Contact us</a></li>
    				<li><a href="#">Feedback</a></li>
    				<li><a href="faq.html">FAQs</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Quick Links</h4>
    			<ul class="footer_links">
    				<li><a href="privacy.html">Privacy Policy</a></li>
    				<li><a href="terms.html">Terms and Conditions</a></li>
    				<li><a href="services.html">Services</a></li>
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
		       <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
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
<script type="text/javascript" src="<%=basePath %>static/js/jquery-3.2.1.js"></script>	                
<script type="text/javascript">
function setclass(page) {
	for(var i=1;i<6;i++){
		var li='li'+i;
		var li1=document.getElementById(li);
		if (li1.className=="active") {
			li1.className="";
		}
	}
	var li2=document.getElementById("li1");
	if (page=="1") {
		if (li2.firstChild.text=="1") {
			li2.className='active';
		}
	}else{
		page.parentNode.className='active';
	}
}
function getdata(page){
	setclass(page);
 	var url="<%=basePath %>GetAllToJson?page="+page.text;
 	
 	$.get(url,function(data){
 		var json=eval(data);
 		var arr=json.users;
 		var str='';
 		$.each(arr,function(index,obj){
 			str+='<div class="jobs-item with-thumb">'
                +'<div class="thumb_top">'
	        +'<div class="thumb"><a href="#">'
	        +'<img src="'
	        +obj.pic
	        +' "class="img-responsive" /></a></div>'
		    +'<div class="jobs_right">'
				+'<h6 class="title"><a href="#">Lorem (2547189)</a></h6>'
				+'<ul class="top-btns">'
				 + '<li><a href="#" class="fa fa-facebook"></a></li>'
				 + '<li><a href="#" class="fa fa-twitter"></a></li>'
				 + '<li><a href="#" class="fa fa-google-plus"></a></li>'
				+'</ul>'
				+'<ul class="login_details1">'
				 + '<li><a href="#">'+obj.logname+'</a></li>'
				+'</ul>'
				+'<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Phone</span> :<a href="#">'
				+ obj.phone
				+'| </a><span class="m_1">Email</span> :<a href="#">'
				+obj.email 
				+'</a><br/><span class="m_1">Message</span> :'
				+obj.message
				+'<br><a href="#" class="read-more">view full profile</a></p>'
			+'</div>'
			+'<div class="clearfix"> </div>'
		   +'</div>'
		   +'<div class="thumb_bottom">'
		   	+  '<div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>'
		   	 + ' <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>'
		   	 +' <div class="clearfix"> </div>'
		  + '</div>'
		  +'</div>';
 		});
 		$("#home").empty();
 		$("#home").append(str);
 	},"json")
 }
$(document).ready(function (){
	var page=1;
 	var url="<%=basePath %>GetAllToJson?page=1";
 	setclass(page);
 	$.get(url,function(data){
 		var json=eval(data);
 		var arr=json.users;
 		var str='';
 		$.each(arr,function(index,obj){
 			str+='<div class="jobs-item with-thumb">'
                +'<div class="thumb_top">'
	        +'<div class="thumb"><a href="#">'
	        +'<img src="'
	        +obj.pic
	        +' "class="img-responsive" /></a></div>'
		    +'<div class="jobs_right">'
				+'<h6 class="title"><a href="#">Lorem (2547189)</a></h6>'
				+'<ul class="top-btns">'
				 + '<li><a href="#" class="fa fa-facebook"></a></li>'
				 + '<li><a href="#" class="fa fa-twitter"></a></li>'
				 + '<li><a href="#" class="fa fa-google-plus"></a></li>'
				+'</ul>'
				+'<ul class="login_details1">'
				 + '<li><a href="#">'+obj.logname+'</a></li>'
				+'</ul>'
				+'<p class="description">30 years, 5 Ft 7 In / 170 Cms | <span class="m_1">Phone</span> :<a href="#">'
				+ obj.phone
				+'| </a><span class="m_1">Email</span> :<a href="#">'
				+obj.email 
				+'</a><br/><span class="m_1">Message</span> :'
				+obj.message
				+'<br><a href="#" class="read-more">view full profile</a></p>'
			+'</div>'
			+'<div class="clearfix"> </div>'
		   +'</div>'
		   +'<div class="thumb_bottom">'
		   	+  '<div class="thumb"><a href="#" class="photo_view">Add Photo</a></div>'
		   	 + ' <div class="thumb_but"><a href="#" class="photo_view">Send Mail</a></div>'
		   	 +' <div class="clearfix"> </div>'
		  + '</div>'
		  +'</div>';
 		});
 		$("#home").empty();
 		$("#home").append(str);
 	},"json")
 })

</script>