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
<link href="<%=request.getContextPath()%>/common/css/haiersoft.css"
	rel="stylesheet" type="text/css" media="screen,print" />
<link href="<%=request.getContextPath()%>/common/css/print.css"
	rel="stylesheet" type="text/css" media="print" />
<script
	src="<%=request.getContextPath()%>/common/js/jquery-1.10.1.min.js"></script>
<script src="<%=request.getContextPath()%>/common/js/side.js"
	type="text/javascript"></script>
</head>
<body>

	<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
	<!-- /picBox -->
	<!-- wrap_right -->
	<div class="wrap_right">
		<header> <!-- Header --> <!-- /Header --> </header>


		<!-- Contents -->
		<div id="Contents">
			<script type="text/javascript">
				$(function() {
					$(".select").each(
							function() {
								var s = $(this);
								var z = parseInt(s.css("z-index"));
								var dt = $(this).children("dt");
								var dd = $(this).children("dd");
								var _show = function() {
									dd.slideDown(200);
									dt.addClass("cur");
									s.css("z-index", z + 1);
								};
								var _hide = function() {
									dd.slideUp(200);
									dt.removeClass("cur");
									s.css("z-index", z);
								};
								dt.click(function() {
									dd.is(":hidden") ? _show() : _hide();
								});
								dd.find("a").click(function() {
									dt.html($(this).html());
									_hide();
								});
								$("body").click(
										function(i) {
											!$(i.target).parents(".select")
													.first().is(s) ? _hide()
													: "";
										});
							})
				})
				
				
				
			</script>

			<!-- MainForm -->
			<div id="MainForm">
				<div class="form_boxB">
					<form action="<%=path%>/t1User/saveRole" method="post"> 
					<h2>角色分配<span style = "padding-left: 800px"><input type = "submit" value = "保存" class = "btn btn-info" ></span></h2>
					
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th>角色名称</th>
						</tr>
						<c:forEach items="${roleList}" var="r">
							<tr>
								<td><input type="checkbox" value="${r.id}" name = "roleIds"
									<c:forEach items='${userRoleList}' var = 'rr'>
									${r.id==rr.id?'checked':''}
								</c:forEach>>${r.rName}</td>

							</tr>
						</c:forEach>
						<tr><td><input type = "hidden"  value = "${userId}" name = "userId"></td></tr>
						<tr><td><input type = "hidden"  value = "${modelId}" name = "modelId"></td></tr>
					</table>
					</form>
				</div>
			</div>


		</div>
		<!-- /Contents -->

		<!-- /footer -->
		<footer>
		<address>2007 Corporation,All Rights</address>
		</footer>
		<!-- /footer -->

	</div>
</body>
</html>