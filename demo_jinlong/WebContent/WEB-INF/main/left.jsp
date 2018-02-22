<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/common/css/public.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/public.js"></script>
<head></head>
<script type="text/javascript">
	
</script>
<body>
	<!-- 左边节点 -->
	<div class="container">
		<div class="leftsidebar_box">
			<a href="main" target="main">
				<div class="line">
					<img src="<%=request.getContextPath()%>/common/img/coin01.png" />&nbsp;&nbsp;首页
				</div>
			</a>
			<dl class="system_log">

				<c:forEach items="${list}" var="m">
					<dt>
						<img class="icon1"
							src="<%=request.getContextPath()%>/common/img/coin03.png" /> <img
							class="icon2"
							src="<%=request.getContextPath()%>/common/img/coin04.png" />
						${m.name} <img class="icon3"
							src="<%=request.getContextPath()%>/common/img/coin19.png" /> <img
							class="icon4"
							src="<%=request.getContextPath()%>/common/img/coin20.png" />
					</dt>
					<c:forEach items="${m.childModel}" var="c">
						<dd>
							<img class="coin11"
								src="<%=request.getContextPath()%>/common/img/coin111.png" /> <img
								class="coin22"
								src="<%=request.getContextPath()%>/common/img/coin222.png" /> <a
								class="cks" href="<%=request.getContextPath()%>/${c.url}" target="main">${c.name}</a> <img class="icon5"
								src="<%=request.getContextPath()%>/common/img/coin21.png" />
						</dd>
					</c:forEach>
				</c:forEach>
				<dt>
					<img class="icon1"
						src="<%=request.getContextPath()%>/common/img/coin03.png" /> <img
						class="icon2"
						src="<%=request.getContextPath()%>/common/img/coin04.png" /> 产品管理
					<img class="icon3"
						src="<%=request.getContextPath()%>/common/img/coin19.png" /> <img
						class="icon4"
						src="<%=request.getContextPath()%>/common/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11"
						src="<%=request.getContextPath()%>/common/img/coin111.png" /> <img
						class="coin22"
						src="<%=request.getContextPath()%>/common/img/coin222.png" /> <a
						class="cks" href="" target="main">商品分类</a> <img class="icon5"
						src="<%=request.getContextPath()%>/common/img/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>

</body>
</html>