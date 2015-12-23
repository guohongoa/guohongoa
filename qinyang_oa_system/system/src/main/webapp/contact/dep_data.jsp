<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<body>
<c:choose>

<c:when test="${friend_list.size()!=0}">
<form>
  <input type="hidden" name="is_empty${level}" value="0" >
</form>
<h5 class="bulec" style="font-weight: normal">
        <c:forEach var="department_info" items="${department_list}">
             <span id="title${department_info.get_department_id()}">
                ${department_info.get_department_name()}
             </span>
        </c:forEach>
        
        </h5>
        <div>
         <c:forEach var="friend_info" items="${friend_list}">
            <div class="contacts" id="${friend_info.get_employee_id()}">
              
                <ul>
                    <li>姓名：<span>${friend_info.get_employee_name()}</span></li>
                    <li>部门：<span>${friend_info.get_employee_department_name()}</span></li>
                    <li>职务：<span>${friend_info.get_employee_position()}</span></li>
                    <li>职责：<span>${friend_info.get_employee_duty()}</span></li>
                    <li>电话：<span>${friend_info.get_employee_phone()}</span></li>
                </ul>
               
                <p>制度：<span>制度</span></p>
            </div>
             <form>
               <input type="hidden" name="department_id" value="${friend_info.get_employee_department_id()}" >
            </form>
             </c:forEach>
              <i id="arrow${level}"></i>
        </div>
</c:when>
<c:otherwise>
  <form>
     <input type="hidden" name="is_empty${level}" value="1" >
  </form>
</c:otherwise>
</c:choose>
<body>     
</html>