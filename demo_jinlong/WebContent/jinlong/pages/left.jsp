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
<script type="text/javascript">
	$(function(){
		$.ajax({
			type:"post",
			url:"<%=path%>/jinlong/productSetList",
			success:function(msg){
				for(var i=0;i<msg.length;i++){
					$("#sp").append("<a class='list-group-item'  onclick = 'set("+msg[i].id+")'><span class='glyphicon glyphicon-asterisk'>"+msg[i].name+"</span></a>");
				}
			},async:true
		})
		
	})

	function set(pId){
		location.href = "<%=path%>/jinlong/product?pId=" + pId
	}
</script>
</head>
<body>
	<!-- 列表 -->
	<div style="width:30%;height:500px; float:left;">
	<div class = "row">
		<div class = "col-md-12"> 
			<a href="#" class="list-group-item active"> 产品中心 </a>
			<%-- <c:forEach items="${list}" var="ps">
				<a class="list-group-item"  onclick = "set(${ps.id})"> <span
					class="glyphicon glyphicon-asterisk" >${ps.name}</span></a>
			</c:forEach> --%>
			<span id = "sp"></span>
		</div>
	</div>
	<div class="panel panel-primary" style = "clear: both;">
			<div class="panel-heading">
				<h3 class="panel-title">联系我们</h3>
			</div>
			<div class="panel-body" style="float: none; color: #3a66b1;">
				<h5>
					<b>青岛金龙峰通讯设备有限公司</b>
				</h5>
				<p>联系人：刘经理 0532-856968698</p>
				<p>刘经理 1329638521</p>
				<p>邮&nbsp;&nbsp;箱：asdsa@163.com</p>
				<p>地&nbsp;&nbsp;址：青岛市市南区江西路7号</p>
			</div>
		</div>
	</div>
</body>
</html>