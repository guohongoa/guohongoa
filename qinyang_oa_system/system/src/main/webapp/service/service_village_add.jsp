<!-- 五服务覆盖村庄添加页面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <p>添加五服务覆盖村庄</p>
  <form action="service_village_add.do" method="post" name="service_village_add_form">
  村庄名称：    <input type="text" name="service_village_name"/>
  所属乡镇id：     <input type="text" name="service_village_county_id"/>
  所属乡镇名称：    <input type="text" name="service_village_county_name"/>
             <input type="submit" value="提交" name="submit"/>
  </form>

</body>
</html>