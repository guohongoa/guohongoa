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
<form name="form1" method="post" action="check_record_info_by_work_record_id.do"> 
     <input type='hidden' name='work_record_id' value='${param.work_record_id}'/>
     <input type='hidden' name='record_page' value='${param.record_page}'/>
     <input type='hidden' name='flag' value='${param.flag}'/>  
</form> 
</body> 
</html> 