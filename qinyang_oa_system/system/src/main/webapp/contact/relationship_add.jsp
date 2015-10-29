<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="relationship_add.do" method="post" name="relationship_add_form">
  主方id：    <input type="text" name="relationship_owner_id"/>
  主方姓名：   <input type="text" name="relationship_owner_name"/>
  客方id：    <input type="text" name="relationship_friend_id"/>
  客方姓名：   <input type="text" name="relationship_friend_name"/>
  关系种类：   <input type="text" name="relationship_category"/>
             <input type="submit" value="提交" name="submit"/>
</form>

</body>
</html>