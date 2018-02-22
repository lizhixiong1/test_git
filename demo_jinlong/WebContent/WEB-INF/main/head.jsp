<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/public.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/public.js"></script>
</head>
<script type="text/javascript">
function exit(){
	if(confirm("确认退出？")){
		top.location.href = "<%=request.getContextPath() %>/t1User/exit";
	}
}
</script>
<body>
	<!-- 头部 -->
	<div class="head">
		<div class="headL">
			<%-- <img class="headLogo" src="<%=request.getContextPath() %>/common/img/logLOGO.png"/> --%>
		</div>
		<div class="headR">
			<span style="color:#FFF"><a href="" onclick = "exit()">【退出登录】</a></span> 
		</div>
	</div>
	
</body>
</html>