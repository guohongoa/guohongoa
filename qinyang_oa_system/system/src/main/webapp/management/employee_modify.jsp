<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
     <c:set var="employee_page" value="${param.employee_page}"/>
</head>
<body>
<!--header为导航容器-->
<div class="header">
    <!--头部header区域内容部分-->
    <div class="header_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li><a href=""><i class="icon icon_m"></i>消息</a></li>
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
            </ul>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="" class="bordernone">首页</a></li>
        <li><a href="">四联</a></li>
        <li><a href="">五服务</a></li>
        <li><a href="">工作</a></li>
        <li><a href="">嘉言民生</a></li>
        <li><a href="">政策法规</a></li>
        <li><a href="">最新资讯</a></li>
        <li><a href="">党员信息</a></li>
        <li><a href="">行政办公</a></li>
        <li><a href="">红色家园</a></li>
    </ul>
</div>
<!--主体-->
<div class="content">
    <div class="left_menu tzlb" style="height: 290px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li><a href="department_check.do?department_page=1">部门管理</a>
            </li>
            <li style="margin-bottom: -7px"> <a href="employee_check.do?employee_page=1" class="active">人员管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="employee_add.jsp" class="red">添加人员</a><i></i></dd>
                    <dd><a href="">修改</a></dd>
                </dl>
            </li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="employee_check.do?employee_page=1">管理</a> &gt;<a href="employee_check.do?employee_page=1">人员管理</a> &gt;<span>人员详情修改</span></h4>
        <div class="bmtj bmtjxg">
            <form action="employee_modify_commit.do" method="post" id="employee_modify">
                 <input type="hidden" name="employee_id" value="${employee_info.get_employee_id()}"/>
                 <input type="hidden" name="employee_page" value="${employee_page}">
                <div>
                    <p><span>员工姓名</span>
                        <input class="input200" type="text" name="employee_name" value="${employee_info.get_employee_name()}"/></p>
                    <p><span>员工性别</span>
                        <c:choose>
                         <c:when test="${employee_info.get_employee_gender()==0}">
                             <input  type="radio" name="employee_gender" value="0" checked/>&nbsp;男&nbsp;&nbsp;
                             <input  type="radio" name="employee_gender" value="1"/>&nbsp;女
                         </c:when>
                         <c:otherwise>
                               <input  type="radio" name="employee_gender" value="0"/>&nbsp;男&nbsp;&nbsp;
                               <input  type="radio" name="employee_gender" value="1" checked/>&nbsp;女
                         </c:otherwise>
                      </c:choose>
                    </p>
                </div>
                <div class="clear">
                    <p><span>出生日期</span>
                        <input class="input200 timedata" type="text" name="employee_birthdate" value="${employee_info.get_employee_birthdate()}"/></p>
                    <p><span>身份证号</span>
                        <input class="input200" type="text" name="employee_idcode" value="${employee_info.get_employee_idcode()}"/></p>
                </div>
                <div class="clear">
                    <p><span>职&nbsp;&nbsp;务</span>
                        <input class="input200" type="text" name="employee_position" value="${employee_info.get_employee_position()}"/></p>
                    <p><span>入职日期</span>
                        <input class="input200 timedata" type="text" name="employee_addworktime" type="text" value="${employee_info.get_employee_addworktime()}"/></p>
                </div>
                <div>
                    <p><span>所属部门</span>
                        <select class="selectsz" name="employee_department_id" form="employee_modify" >
                         <c:forEach var="department_info" items="${department_info_list}" >
                            <!--转队列入下拉框，当前数据处于初始显示状态-->
                            <c:choose>
                               <c:when test="${department_info.get_department_id()==employee_info.get_employee_department_id()}">
                                  <option value ="${department_info.get_department_id()}" selected="selected">${department_info.get_department_name()}</option>
                               </c:when>
                               <c:otherwise>
                                   <option value ="${department_info.get_department_id()}" >${department_info.get_department_name()}</option>
                               </c:otherwise>
                            </c:choose>
                         </c:forEach>    
                         </select>
                         <input type="hidden" name="employee_old_leader_id" value="${employee_info.get_employee_leader_id()}">
                    <p><span>直接上级</span>
                         <select class="selectsz" name="employee_leader_id" form="employee_modify" >
                          <c:forEach var="employee_info2" items="${employee_info_list}" >
                          <!--转队列入下拉框，当前数据处于初始显示状态-->
                            <c:choose>
                            <c:when test="${employee_info2.get_employee_id()==employee_info.get_employee_leader_id()}">
                                <option value ="${employee_info2.get_employee_id()}" selected="selected">${employee_info2.get_employee_name()}</option>
                            </c:when>
                            <c:otherwise>
                                 <option value ="${employee_info2.get_employee_id()}">${employee_info2.get_employee_name()}</option>
                            </c:otherwise>
                            </c:choose>
                         </c:forEach>
                         <c:choose>
                         <c:when test="${employee_info.get_employee_id()==-1}">
                             <option value="-1" selected="selected">无</option>
                         </c:when>
                         <c:otherwise>
                              <option value="-1">无</option>
                         </c:otherwise>
                         </c:choose>   
                         </select>
                </div>
                <div>

                    <p><span>联系电话</span>
                        <input class="input200" type="text" name="employee_phone" value="${employee_info.get_employee_phone()}"/></p>
                    <p><span>工作职责</span>
                        <input class="input200"  type="text" name="employee_duty" value="${employee_info.get_employee_duty()}"/></p>
                </div>

                <div class="clear tianjiabtn">
                    <input type="submit" name="submit" value="修改"/><input type="reset" value="重置"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>