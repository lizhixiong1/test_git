<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
<script src="<%=path%>/bootstrap/jquery.js"></script>
<script src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<!-- logo -->
			<div class="col-md-8">
				<div class="row">
					<div class="col-lg-2">
						<img src="<%=path%>/jinlong/images/31.gif" />
					</div>
					<div class="col-lg-10">
						<div>
							<h2>青 岛 金 龙 峰 通 讯 设 备 有 限 公 司</h2>
						</div>
						<div>
							<p class="text-muted">QING&nbsp;DAO&nbsp; JIN&nbsp;
								LONG&nbsp; FENG&nbsp;TONG&nbsp; XUN&nbsp; SHE&nbsp; BEI&nbsp;
								YOU&nbsp;XIAN&nbsp; GONG&nbsp;SI</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div>
						<ul class="nav nav-pills">
							<li class="dropdown"><a href="#">设为主页</a></li>
							<li class="dropdown"><a href="#">收藏本站</a></li>
							<li class="dropdown"><a href="#">联系我们</a></li>
						</ul>
					</div>
				</div>
				</nav>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="col-md-12">
				<!-- 导航 -->
				<div>
					<ul class="nav nav-tabs">
						<li class="active"><a href="<%=path %>/jinlong/index">首页</a></li>
						<li><a href="<%=path %>/jinlong/enterprise_culture">企业文化</a></li>
						<li><a href="<%=path %>/jinlong/honor">荣誉资质</a></li>
						<li><a href="<%=path %>/jinlong/product">产品中心</a></li>
						<li><a href="<%=path %>/jinlong/success">成功案例</a></li>
						<li><a href="<%=path %>/jinlong/contact">联系我们</a></li>
					</ul>
				</div>

				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="<%=path %>/jinlong/images/29.gif"
								alt="First slide">
						</div>
						<div class="item">
							<img src="<%=path %>/jinlong/images/32.gif"
								alt="Second slide">
						</div>
						<div class="item">
							<img src="<%=path %>/jinlong/images/29.gif"
								alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev">&lsaquo; </a> <a class="carousel-control right"
						href="#myCarousel" data-slide="next">&rsaquo; </a>
				</div>
</body>
</html>