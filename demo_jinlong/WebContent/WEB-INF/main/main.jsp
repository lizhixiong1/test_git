<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/common/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="<%=request.getContextPath() %>/common/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="<%=request.getContextPath() %>/common/js/jquery-1.10.1.min.js"></script>
<script src="<%=request.getContextPath() %>/common/js/side.js" type="text/javascript"></script>
</head>
<body>

<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
<!-- /picBox -->
<!-- wrap_right -->
<div class="wrap_right">
<header>
<!-- Header -->

<!-- /Header -->
</header>


	<!-- Contents -->
	<div id="Contents">
	<script type="text/javascript">
	$(function(){
	$(".select").each(function(){
	var s=$(this);
	var z=parseInt(s.css("z-index"));
	var dt=$(this).children("dt");
	var dd=$(this).children("dd");
	var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
	var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
	dt.click(function(){dd.is(":hidden")?_show():_hide();});
	dd.find("a").click(function(){dt.html($(this).html());_hide();});
	$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
	</script>

<!-- MainForm -->
<div id="MainForm">
<div class="form_boxB">
<h2>2017-11月费用列表</h2>
<table cellpadding="0" cellspacing="0">
	<tr>
	<td colspan="10" class="info_boxA">部门：人力资源部　　类别：费用类　　日期：2017-11　　预测总额：46150.00元</td>
	</tr>
	<tr>
		<th>序号</th>
		<th>用户名</th>
		<th>密码</th>
		<th>真实姓名</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${userList}" var="user">
		<tr>
			<td>${user.id }</td>
			<td>${user.username }</td>
			<td>${user.password }</td>
			<td>${user.realname }</td>
			<td>${user.isLock }</td>
			<td></td>
		</tr>
	</c:forEach>

</table>
<p class="msg">共找到47条年度预算记录，当前显示从第1条至第10条</p>
</div>
</div>
<!-- /MainForm -->


<!-- BtmMain -->
<div id="BtmMain">
<span class="ttl">全部审批</span>

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">审核时间：</span>
<input name="" type="text" size="8">
</div>
<!-- /txtbox -->

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">审核人：</span>
<input name="" type="text" size="8">
</div>
<!-- /txtbox -->

<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="button" value="返回列表" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->

<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="button" value="驳回" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->

<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="button" value="通过" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->
</div>
<!-- /BtmMain -->

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