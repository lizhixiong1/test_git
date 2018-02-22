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
	<jsp:include page="/jinlong/pages/header.jsp"></jsp:include>
	<jsp:include page="/jinlong/pages/left.jsp"></jsp:include>


	<div style="width: 69%;height:500px; float: right;">

		<div class="row">
			<!-- 公司简介 -->
			<div class="col-lg-8">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">公司简介</h3>
					</div>
					<div class="panel-body">
						<!-- 内容简述 -->
						面板内容

					</div>
				</div>
			</div>

			<!-- 荣誉资质 -->
			<div class="col-lg-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">荣誉资质</h3>
					</div>
					<div class="panel-body">
						<!-- 内容简述 -->
						面板内容

					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">产品展示</h3>
					</div>
					<div class="panel-body">面板内容</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">工程案例</h3>
					</div>
					<div class="panel-body">面板内容</div>
				</div>
			</div>
		</div>

	</div>
	
		
	</div>
</body>
</html>