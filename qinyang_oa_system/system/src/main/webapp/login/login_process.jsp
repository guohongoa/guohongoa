<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 处理登陆后状态 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${status}</h1>  
       <a href="index.jsp">3秒后系统会自动跳转，也可点击本处直接跳</a>  
<script>
function jumpurl(){
  location='index.jsp';
}
setTimeout('jumpurl()',3000);
</script> 
</body>
</html>