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
<table>
   <tr>
     <th>id</th>
     <th>name</th>
     <th>type</th>
   <tr>
   <c:forEach var="department_group_info" items="${department_group_list}">
      <tr>
          <td>${department_group_info.get_department_group_id()}</td>
          <td>${department_group_info.get_department_group_name()}</td>
          <td>${department_group_info.get_department_group_type()}</td>
      </tr>
   </c:forEach>
   
</table>

</body>
</html>