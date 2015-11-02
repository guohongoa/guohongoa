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
   <c:forEach var="department_relationship_info" items="${department_relationship_list}">
       <h3>${department_relationship_info.get_department_relationship_downer_name()}</h3>
       <h3>${department_relationship_info.get_department_relationship_downer_id()}</h3>
   </c:forEach>
   
   ${xml}

</body>
</html>