<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <!-- 查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
setTimeout("document.employee_modify.submit()",10) 
</script> 
<!-- 提交村庄检索信息-->
<body > 
<form name="employee_modify" method="post" action="employee_modify.do"> 
    <input type='hidden' name='employee_id' value='${param.employee_id}'/> 
</form> 
</body> 
</html> 