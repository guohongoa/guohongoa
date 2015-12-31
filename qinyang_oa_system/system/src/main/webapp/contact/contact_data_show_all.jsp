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
    <ul>
         <c:forEach var="contact_person_info" items="${contact_info_list}">
              <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
         </c:forEach>
     </ul>
</body>
</html>