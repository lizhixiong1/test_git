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

	<div style="width: 69%; float: right;">


		<div class="panel-body">

			<table class="table">
				<tr>
					<td>
						<div class="row text-center" onclick="">
							<div class="col-sm-12">
								<div class="thumbnail">
									<img src="../jinlong/images/01.gif" alt="...">
									<div class="caption">
										<h5>120光纤通道</h5>
									</div>
								</div>
							</div>
						</div>
					</td>
					<td>
						<div class="row text-center" onclick="">
							<div class="col-sm-12">
								<div class="thumbnail">
									<img src="../jinlong/images/01.gif" alt="...">
									<div class="caption">
										<h5>120光纤通道</h5>
									</div>
								</div>
							</div>
						</div>
					</td>
					<td>
						<div class="row text-center" onclick="">
							<div class="col-sm-12">
								<div class="thumbnail">
									<img src="../jinlong/images/01.gif" alt="...">
									<div class="caption">
										<h5>120光纤通道</h5>
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<ul class="pager">
				<li class="previous"><a href="#">&larr; 上一页</a></li>
				<li class="next"><a href="#">下一页 &rarr;</a></li>
			</ul>
		</div>
	</div>

</body>
</html>