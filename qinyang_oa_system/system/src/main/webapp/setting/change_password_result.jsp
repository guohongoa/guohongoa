<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<!-- 处理登陆后状态 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set  var="result"  value="${result}"/>
<c:choose>
    <c:when test="${result == 1}">
       <h1>密码修改成功</h1>
       <a href="setting/personal.jsp">3秒后系统会自动跳转，也可点击本处直接跳</a>  
       <script>
        function jumpurl()
        {
         location='setting/check_personal.do?employee_id=${user_id}';
         }
         setTimeout('jumpurl()',3000);
        </script> 
    </c:when>
    <c:when test="${status == 0}">
        <h1>旧密码输入错误</h1>
        <script>
        function jumpurl()
        {
         location='setting/change_password.jsp';
         }
         setTimeout('jumpurl()',2000);
        </script>         
    </c:when>
     <c:when test="${status == 2}">
        <h1>修改失败，请重新尝试</h1>
        <script>
        function jumpurl()
        {
         location='setting/change_password.jsp';
         }
         setTimeout('jumpurl()',2000);
        </script>         
    </c:when>
    <c:otherwise>
        <h1>两次新密码输入结果不一致</h1>
        <script>
        function jumpurl()
        {
         location='setting/change_password.jsp';
         }
         setTimeout('jumpurl()',2000);
        </script>    
    </c:otherwise>
</c:choose>
</body>
</html>