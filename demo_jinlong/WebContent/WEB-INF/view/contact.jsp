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
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">联系我们</h3>
				</div>
				<div class="panel-body">
					<div class="text-left" style="padding-left: 10%; height: 210px;">
						<h3>
							<center>联系我们</center>
						</h3>
						<br />
						<br /> <b>青岛金龙峰通讯设备有限公司</b>
						<p>联系人：刘经理 0532-856968698</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 刘经理 1329638521</p>
						<p>邮&nbsp;&nbsp;箱：asdsa@163.com</p>
						<p>地&nbsp;&nbsp;址：青岛市市南区江西路7号</p>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="thumbnail">
								<img src="<%=path %>/images/13.gif" alt="...">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
</body>
</html>