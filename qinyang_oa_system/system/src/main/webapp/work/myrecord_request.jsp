<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <!-- 查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
setTimeout("document.record_check.submit()",10) 
</script> 
<!-- 提交检索部门信息-->
<body > 
<form name="record_check" method="post" action="record_check_by_user.do"> 
   <input type="hidden" name="work_record_creatorid" value="${user_id}" />
   <input type='hidden' name='record_page' value='${param.record_page}'/>
   <input type='hidden' name='flag' value='${param.flag}'/>
</form> 
</body> 
</html>