<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!--设置页面选择，测试session，未登陆跳转至登陆前页面，登陆后跳转至登陆后页面  -->
<body>
<c:choose>
    <c:when test="${not empty user_name}">
        <!--跳转至登陆后页面 -->
       <script>
       function jumpurl()
       {
    	   location='index1.jsp';
       }
       setTimeout('jumpurl()',1000);
       </script> 
         
    </c:when>
    <c:otherwise>
       <!--跳转至登陆前页面 -->
       <script>
       function jumpurl()
       {
    	   location='index2.jsp';
       }
       setTimeout('jumpurl()',1000);
       </script> 
    </c:otherwise>
</c:choose>


</body>
</html>