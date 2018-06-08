<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>
<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
<script src="<%=path%>/bootstrap/jquery.js"></script>
<script src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		
	})
	function getUserList(){
		localtion.href = "/getUserList"
	}
</script>

<body>
<h2>Hello World!</h2>

<input type = "button" value = "列表" onclick = "getUserList()">
<button onclick = "getUserList()">列表</button>
</body>
</html>
