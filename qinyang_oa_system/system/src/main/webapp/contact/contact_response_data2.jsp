<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
     <c:choose>
       <c:when test="${return_type!=2}">
        <div class="return_type">${return_type}</div>
        <div class="msg">${msg}</div>
        <div class="phone">${phone}</div>
       </c:when>
       <c:otherwise>
           <div class="return_type">${return_type}</div>
           <div class="msg">${msg}</div>
           <div class="contact_request_sender_id">${contact_request_sender_id}</div>
           <div class="contact_request_receiver_id">${contact_request_receiver_id}</div>
       </c:otherwise>
     </c:choose>
</body>
</html>