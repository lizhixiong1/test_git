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
				
				
				
				function role(){
					alert(123);
					var uid = $(":checkbox:checked").val()
					if(uid==null){
						alert("请选择你要分配角色的用户");
					}else{
						var modelId = ${modelId}
						
						location.href = "<%=path%>/t1User/toRoleAllot/"+uid+"/"+${modelId}
					}
				}
				
			</script>

			<!-- MainForm -->
			<div id="MainForm">
				<div class="form_boxB">
					<h2>用户列表</h2>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<c:forEach items="${funList }" var="f">

								<th>
									<c:if test="${f.name=='新增'}"><input type="button" class="btn btn-info" onclick = "add()" value="添加"></c:if>
									<c:if test="${f.name=='删除'}"><input type="button" class="btn btn-info" onclick = "del()" value="删除选中"></c:if>
									<c:if test="${f.name=='分配角色'}"><input type="button" class="btn btn-info" onclick = "role()" value="分配角色"></c:if>
								</th>

							</c:forEach>
						</tr>
						<tr>
							<th><input type = "checkbox"></th>
							<th>序号</th>
							<th>用户名</th>
							<th>密码</th>
							<th>真实姓名</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${userList}" var="user">
							<tr>
								<td><input type = "checkbox" value = "${user.id}"></td>
								<td>${user.id }</td>
								<td>${user.admin }</td>
								<td>${user.password }</td>
								<td>${user.name }</td>
								<td><c:forEach items="${funList}" var="f">
										<c:if test="${f.name=='删除'}"><input type="button" class="btn btn-info" onclick = "ss()" value="删除"></c:if>
										<c:if test="${f.name=='修改'}"><input type="button" class="btn btn-info" value="修改"></c:if>
									</c:forEach></td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>

			<!-- PageNum -->
			<ul id="PageNum">
				<li><a href="#">首页</a></li>
				<li><a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">6</a></li>
				<li><a href="#">下一页</a></li>
				<li><a href="#">尾页</a></li>
			</ul>
			<!-- /PageNum -->
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