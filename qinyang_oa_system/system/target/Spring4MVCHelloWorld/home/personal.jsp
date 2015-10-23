<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty system_user_info}">
		<c:set var="system_user_name" scope="session"
			value="${system_user_info.get_user_name()}" />
		<c:set var="system_user_id" scope="session"
			value="${system_user_info.get_user_id()}" />
	</c:if>
	<c:choose>
		<c:when test="${empty system_user_name}">
			<table border="0">
				<form action="../login.do" method="post">
					<tr>
						<td width="20%">用户名</td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td width="20%">密 码</td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="登陆" />&nbsp;&nbsp;<input type="reset" value="重置"></td>
					</tr>
				</form>
				<a href="../index.jsp">返回首页</a>
			</table>
		</c:when>
		<c:otherwise>
			<h2>${system_user_name}</h2>
			<h2>${system_user_id}</h2>
			<a href="../index.jsp">返回首页</a>
		</c:otherwise>
	</c:choose>
</body>
</html>