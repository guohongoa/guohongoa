<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <!-- 查询提交页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head> 
<script language="javascript"> 
setTimeout("document.village_modify.submit()",10) 
</script> 
<!-- 提交村庄检索信息-->
<body > 
<form name="village_modify" method="post" action="village_modify.do"> 
    <input type='hidden' name='service_village_county_id' value='${param.service_village_county_id}'/> 
</form> 
</body> 
</html> 