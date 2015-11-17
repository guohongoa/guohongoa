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
<tr><th>部门名称</th><th>修改下级部门</th></tr>
<c:forEach var="contact_person_department_info" items="${contact_person_department_info_list}">
    <tr>
        <td>${contact_person_department_info.get_contact_person_department_name()}</td>
        <td><a href="department_modify.jsp?department_id=${contact_person_department_info.get_contact_person_department_id()}&department_name=${contact_person_department_info.get_contact_person_department_name()}">修改</a></td>
    </tr>
</c:forEach>
</table>
</body>
</html>