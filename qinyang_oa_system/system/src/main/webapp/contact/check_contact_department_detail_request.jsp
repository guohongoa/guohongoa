<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 四联查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
setTimeout("document.department_detail_form.submit()",10) 
</script> 
<body > 
<form name="department_detail_form" method="post" action="contact_department_detail_check.do">
   <input type="hidden" name="employee_id" value="1">   <!--输入员工编号-->
   <input type="hidden" name="contact_person_department_id" value="1"> 
</form> 
</body> 
</html> 