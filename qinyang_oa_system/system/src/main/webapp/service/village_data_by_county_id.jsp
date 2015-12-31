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
   <c:forEach var="service_village_info" items="${service_village_info_list}">
        <li>
           <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info.get_service_village_id()}&service_type=0&service_page=1">${service_village_info.get_service_village_name()}</a>
        </li>
    </c:forEach>
</body>
</html>