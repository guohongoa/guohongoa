<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <!-- 查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
   setTimeout("document.personal.submit()",10) 
</script> 
<body > 
<form name="personal" method="post" action="check_personal.do"> 
     <input type='hidden' name='employee_id' value='1'/>
</form> 
</body> 
</html> 