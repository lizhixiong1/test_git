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

				//页面就绪时将选中复选框value放进集合
				var moduleFunIds1 = new Array();
				$(function() {
					$.each($(".fun"), function(i, obj) {
						if (obj.checked) {
							moduleFunIds1[i] = obj.value
						}

					})
				})

				//保存时选中复选框value放进集合
				function savePermit() {
					var moduleFunIds2 = new Array();
					
					$.each($(".fun"), function(i, obj) {
						if (obj.checked) {
							moduleFunIds2[i] = obj.value
						}
					})

					var del_ids = "";
					var add_ids = "";
					var roleId = ${roleId};
					for (i in moduleFunIds1) {
						var v = moduleFunIds1[i];
						var flag = false;
						for (j in moduleFunIds2) {
							if (v == moduleFunIds2[j]) {
								flag = true;
							}
						}
						if (!flag) {
							del_ids += v + "|";
						}
					}
					
					for (i in moduleFunIds2) {
						var v = moduleFunIds2[i];
						var flag = false;
						for (j in moduleFunIds1) {
							if (v == moduleFunIds1[j]) {
								flag = true;
							}
						}
						if (!flag) {
							add_ids += v + "|";
						}
					}
					
					$.ajax({
						type : "post",
						url : "<%=path%>/t1Role/savePermit",
						data:{roleId:roleId,delIds:del_ids,addIds:add_ids},
						success:function(msg){
							if(msg==1){
								alert("修改权限成功");
								location.href = "<%=path%>/t1Role/role"
							}else{
								alert("失败");
							}
							
						}
					})
				}
			</script>

			<!-- MainForm -->
			<div id="MainForm">
				<div class="form_boxB">
					<h2>
						权限列表<span style="padding-left: 800px"><input type="button"
							value="保存" onclick="savePermit()"></span>
					</h2>

					<table cellpadding="0" cellspacing="0">
						<tr>
							<th>模块</th>
							<th>功能</th>
						</tr>
						<c:forEach items="${permitList}" var="p">
							<tr>
								<td>${p.name}</td>
								<td>
									<table>
										<c:forEach items="${p.childModel}" var="c">
											<tr>
												<td>${c.name}</td>
												<td>
													<table>
														<c:forEach items="${c.funList}" var="f">
															<tr>
																<td><input type="checkbox"
																	${f.isChecked==true?'checked':'' }
																	value="${c.id}_${f.id}" class="fun"> ${f.name}</td>
															</tr>
														</c:forEach>
													</table>
												</td>
											</tr>
										</c:forEach>
									</table>
								</td>
							</tr>
						</c:forEach>
					</table>
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