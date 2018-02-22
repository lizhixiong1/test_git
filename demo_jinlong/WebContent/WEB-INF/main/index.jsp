<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
	<frameset rows="100,*" cols="*" scrolling="No" framespacing="0" 
	  frameborder="no" border="0"> 
		<!-- 引用头部 -->
		<frame src="head" name="headmenu" id="mainFrame" title="mainFrame">
		<!-- 引用左边和主体部分 --> 
		<frameset rows="100*" cols="220,*" scrolling="No" 
			framespacing="0" frameborder="no" border="0">
			<frame src="<%=request.getContextPath()  %>/t1Model/getModelList" name="leftmenu" id="mainFrame" title="mainFrame">
			<frame src="main" name="main" scrolling="yes" noresize="noresize"
			id="rightFrame" title="rightFrame">
		</frameset>
	</frameset>
</html>