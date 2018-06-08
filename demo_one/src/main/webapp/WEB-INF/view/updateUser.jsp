<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

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
<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
<script src="<%=path%>/bootstrap/jquery.js"></script>
<script src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<form action="<%=path%>/updateUser" method="post">
		<input type = "hidden" value = "${user.id}" name = "id">
		姓名：<input type = "text" name = "name" value = "${user.name}">
		
		生日：<input type = "text" name = "birthday" value =  <fmt:formatDate value="${user.birthday}"/>>
		年龄：<input type = "text" name = "age" value = "${user.age}">
		部门：<input type = "text" name = "dept" value = "${user.dept}">
		爱好：<input type = "checkbox" name = "" value = ""
		<input type = "submit" value = "提交">
	</form>
</body>
</html>