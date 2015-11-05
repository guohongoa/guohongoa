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
    <c:forEach var="contact_person_info_list" items="${contact_list}">
      <c:forEach var="contact_person_info" items="${contact_person_info_list}">
        <p>${contact_person_info.get_contact_person_name()}</p>
      </c:forEach>
    </c:forEach>
</body>
</html>