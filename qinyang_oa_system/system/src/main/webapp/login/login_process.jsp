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
<c:set  var="status"  value="${status}"/>
<c:choose>
    <c:when test="${status == 0}">
       <h1>登陆成功</h1>
       <c:set  var="user_name"  value="${employee_info.get_employee_name()}"  scope="session"  />
       <c:set  var="user_phone"  value="${employee_info.get_employee_phone()}"  scope="session"  />
       <c:set  var="user_id"  value="${employee_info.get_employee_id()}"  scope="session"  />
       <c:set var="user_group_type" value="${employee_info.get_employee_service_group()}" scope="session" />
       <c:choose>
         <c:when test="${user_group_type!=0}">
          <c:set var="user_service_group_id" value="${employee_info.get_service_group_id()}" scope="session"/>
         </c:when>
       </c:choose>
       <a href="index.jsp">3秒后系统会自动跳转，也可点击本处直接跳</a>  
       <script>
        function jumpurl()
        {
         location='index.jsp';
         }
         setTimeout('jumpurl()',10);
        </script> 
    </c:when>
    <c:when test="${status == 1}">
        <h1>用户名不存在</h1>
        <script>
        function jumpurl()
        {
         location='index.jsp';
         }
         setTimeout('jumpurl()',3000);
        </script>         
    </c:when>
     <c:when test="${status == 3}">
       <h1>登陆成功</h1>
       <c:set  var="user_name"  value="${employee_info.get_employee_name()}"  scope="session"  />
       <c:set  var="user_phone"  value="${employee_info.get_employee_phone()}"  scope="session"  />
       <c:set  var="user_id"  value="${employee_info.get_employee_id()}"  scope="session"  />
       <c:set var="user_group_type" value="${employee_info.get_employee_service_group()}" scope="session" />
       <c:set var="user_admin" value="1" scope="session"/>
       <c:choose>
         <c:when test="${user_group_type!=0}">
          <c:set var="user_service_group_id" value="${employee_info.get_service_group_id()}" scope="session"/>
         </c:when>
       </c:choose>
       <a href="management">3秒后系统会自动跳转，也可点击本处直接跳</a>  
       <script>
        function jumpurl()
        {
         location='management';
         }
         setTimeout('jumpurl()',10);
        </script>      
    </c:when>
    <c:when test="${status==4}">
       <h1>您没有管理员权限</h1>
       <c:set  var="user_name"  value="${employee_info.get_employee_name()}"  scope="session"  />
       <c:set  var="user_phone"  value="${employee_info.get_employee_phone()}"  scope="session"  />
       <c:set  var="user_id"  value="${employee_info.get_employee_id()}"  scope="session"  />
       <c:set var="user_group_type" value="${employee_info.get_employee_service_group()}" scope="session" />
       <c:choose>
         <c:when test="${user_group_type!=0}">
          <c:set var="user_service_group_id" value="${employee_info.get_service_group_id()}" scope="session"/>
         </c:when>
       </c:choose>
       <a href="index.jsp">3秒后系统会自动跳转，也可点击本处直接跳</a>  
       <script>
        function jumpurl()
        {
         location='index.jsp';
         }
         setTimeout('jumpurl()',3000);
        </script> 
    </c:when>
    <c:otherwise>
        <h1>用户名或密码错误</h1>
        <script>
        function jumpurl()
        {
         location='index.jsp';
         }
         setTimeout('jumpurl()',3000);
        </script>    
    </c:otherwise>
</c:choose>
</body>
</html>