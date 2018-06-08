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
<script type="text/javascript">
	function dels(){
		var userIds = '';
		$("input[name='userIds']:checked").each(function(){
			userIds += "," + $(this	).val()
		})
		userIds = userIds.substring(1);
		alert(userIds)
		$.ajax({  
            type: "post",  
            url: "<%=path%>/delUserByIds",  
            data: {userIds:userIds},  
            dataType: "json",  
            success: function(data){  
                        if(data==1){
                        	location.href = "<%=path%>/getUserList";
                        }else{
                        	alert("失败");
                        }
                     }
		})
	}
	function add(){
		location.href = "<%=path%>/toAddUser"
	}
	
	function upd(id){
		location.href = "<%=path%>/toUpdUser/"+id
	}
</script>
</head>
<body>
	<input type = "button" value = "添加" onclick = "add()">
	<input type = "button" value = "删除" onclick = "dels()">
	<table>
		<tr>
			<td>姓名</td>
			<td>年龄</td>
			<td>生日</td>
			<td>部门</td>
		</tr>
		<c:forEach items="${userList}" var = "u">
			<tr>
				<td><input type = "checkbox" value = "${u.id}" class = "check" name = "userIds"></td>
				<td>${u.id}</td>
				<td>${u.name}</td>
				<td>${u.age}</td>
				<td>${u.birthday}</td>
				<td>${u.dept}</td>
				<td><input type = "button" value = "修改" onclick = "upd(${u.id})"></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>