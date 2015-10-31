<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="department_relationship_add.do" method="post" name="department_relationship_add_form">
  上级部门名称：    <input type="text" name="department_relationship_upper_name"/>
  上级部门id：     <input type="text" name="department_relationship_upper_id"/>
  下级部门名称：    <input type="text" name="department_relationship_downer_name"/>
  下级部门id：   <input type="text" name="department_relationship_downer_id"/>
  上级部门级别：   <input type="text" name="department_relationship_upper_level"/>
             <input type="submit" value="提交" name="submit"/>
  </form>

</body>
</html>