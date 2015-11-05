<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--添加四联人员页面-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="contact_person_add.do" method="post" name="contact_person_add_form">
     四联联络人（机构）名称:<input type="text" name="contact_person_name"/>
     四联联络人（机构）所属组织名称:
          <select name="contact_person_department_id">
          <option value="1">市委常委                   </option>
          <option value="2">市政府                     </option>
          <option value="3">乡镇办党（工）委             </option>
          <option value="4">市直能部门                  </option>
          <option value="5">农村（社区）党员干部          </option>
          <option value="6">乡镇办内设机构和基层站所       </option>
          <option value="7">党员群众服务中心嘉言民生代办员  </option>
          <option value="8">农村(社区)党员组织           </option>
          <option value="9">村民小组                   </option>
          <option value="10">农村（社区）事务            </option>
          <option value="11">群众                     </option>
          </select>
          
          <input type="submit" name="submit">
  </form>

</body>
</html>