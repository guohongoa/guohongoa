<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
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
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
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
    <div class="left_menu tzlb" style="height: 325px">
        <h3>管理</h3>
        <ul>
            <li><a href="check_service_village_detail.do">村镇管理</a></li>
            <li><a href="department_check.do" >部门管理</a>
            </li>
            <li><a href="employee_check.do" class="active">人员管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="＃" class="red">添加人员</a><i></i></dd>
                </dl>
            </li>
            <li><a href="service_group_check.do">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<a href="">人员管理</a>&gt;<span>添加人员</span></h4>
        <div class="bmtj ">
            <form action="./employee_insert.do" method="post" id="employee_insert">
                <div>
                    <p><span>员工姓名</span>
                        <input class="input200" type="text" name="employee_name"/></p>
                    <p><span>员工性别</span>
                        <input  type="radio" name="employee_gender" value="0" checked />男
                        <input  type="radio" name="employee_gender" value="1"/>女
                    </p>
                </div>
                <div class="clear">
                    <p><span>出生日期</span>
                        <input class="input200 timedata" type="text" name="employee_birthdate"/></p>
                    <p><span>身份证号</span>
                        <input class="input200" type="text" name="employee_idcode"/></p>
                </div>
                <div class="clear">

                    <p><span>职&nbsp;&nbsp;务</span>
                        <input class="input200" type="text" name="employee_position"/></p>
                    <p><span>入职日期</span>
                        <input class="input200 timedata" type="text" name="employee_addworktime"/></p>
                </div>
                <div>
                    <p><span>所属部门</span>
                        <!--传入部门id-->
                        <select name="employee_department_id" form="employee_insert" >
                         <c:forEach var="department_info" items="${department_info_list}" >
                            <option value ="${department_info.get_department_id()}">${department_info.get_department_name()}</option>
                         </c:forEach>    
                         </select>
                     </p>
                    <p><span>直接上级</span>
                          <select name="employee_leader_id" form="employee_insert" >
                          <c:forEach var="employee_info" items="${employee_info_list}" >
                            <option value ="${employee_info.get_employee_id()}">${employee_info.get_employee_name()}</option>
                         </c:forEach>
                             <option value="-1">无</option>   
                         </select>
                     </p>
                </div>
                <div>

                    <p><span>联系电话</span>
                        <input class="input200" type="text" name="employee_phone"/></p>
                    <p><span>工作职责</span>
                        <input class="input200" type="text" name="employee_duty" /></p>

                </div>

                <div class="clear tianjiabtn">
                    <input type="submit" value="添加"/><input type="reset" value="重置"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>