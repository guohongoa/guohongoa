<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <!-- 查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
setTimeout("document.service_send_display.submit()",10) 
</script> 
<!--发送用户id，显示可汇报上级列表-->
<body > 
<form name="service_send_display" method="post" action="service_send_display.do"> 
   <input type="hidden" name="employee_id" value="2" /> 
</form> 
</body> 
</html>