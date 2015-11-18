<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <c:set var="department_id" value="${param.department_id}"/>
 <c:set var="department_name" value="${param.department_name}"/>
</head>
<body>
    <li>${department_name}</li>
    <form action="department_add_son.do" method="post">
       <input type="hidden" name="contact_person_department_id" value="${department_id}">
       <li>下级部门一</li>
       <select name="contact_person_department_sononeid">
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
          <option value="0">  无                     </option>
          </select>
    
    
    <li>下级部门二</li>
       <select name="contact_person_department_sontwoid">
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
          <option value="0">  无                       </option>
          </select>
          
     <li>下级部门三</li>
       <select name="contact_person_department_sonthreeid">
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
          <option value="0">  无                       </option>
          </select>
          
       <li>下级部门四</li>
       <select name="contact_person_department_sonfourid">
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
          <option value="0">  无                       </option>
          </select>
       <input type="submit" name="submit" value="提交">
    </form>
</body>
</html>