<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <!-- 查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
   setTimeout("document.form1.submit()",10) 
</script> 
<body > 
<form name="form1" method="post" action="check_service_info_by_service_msgid.do"> 
     <input type='hidden' name='service_msgid' value='${param.service_msgid}'/>
      <input type='hidden' name='service_page' value='${param.service_page}'/> 
</form> 
</body> 
</html> 