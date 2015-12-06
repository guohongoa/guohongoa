<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--添加四联好友-->
<form name="form" action="contact_relationship_add.do" method="post">
   <input type="hidden" name="owner_employee_id" value="${user_id}">
   <p>添加人手机号<input type="text" name="friend_employee_phone"></p>
   <p><input type="submit" name="submit" value="添加"></p>
</form>
</body>
</html>