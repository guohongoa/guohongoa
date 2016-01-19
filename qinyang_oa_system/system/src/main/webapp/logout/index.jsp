<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<!-- 处理登陆后状态 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<!--注销session  -->
<c:remove  var="user_name"  scope="session"  />
<c:remove  var="user_id"  scope="session"  />
<c:remove  var="user_group_type"  scope="session"  />
       <a href="index.jsp">3秒后系统会自动跳转，也可点击本处直接跳</a>  
<script>
function jumpurl(){
  location='../index.jsp';
}
setTimeout('jumpurl()',3000);
</script> 
</body>
</html>