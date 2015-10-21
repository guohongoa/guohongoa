<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>用户名</th>
			<th>用户职位</th>
			<th>用户职位级别</th>
			<th>用户部门</th>
		</tr>
		<c:forEach var="user_info" items="${user_info_list}">
			<tr>
				<td>${user_info.get_user_name()}</td>
				<td>${user_info.get_user_position()}</td>
				<td>${user_info.get_user_position_level()}</td>
				<td>${user_info.get_user_department()}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="index.jsp">返回首页</a>
</body>
</html>