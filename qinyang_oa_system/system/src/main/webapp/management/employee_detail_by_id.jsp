<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
     <c:set var="employee_id" value="${param.employee_id}"/>
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
                <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>条待审核记录</a></li>
                </ul>
            </div>
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
    <h4><a href="">管理</a>&gt;<span>人员详情</span></h4>
    <div class="border">
        <div class="wdtzxq">
            <p><b>员工姓名：</b><span>${employee_info.get_employee_name()}</span></p>
            <p><b>员工性别：</b><span>${employee_info.get_employee_str_gender()}</span></p>
              
            <p><b>出生日期：</b><span>${employee_info.get_employee_birthdate()}</span></p>
            <p><b>身份证号：</b><span>${employee_info.get_employee_idcode()}</span></p>
            <p><b>员工职务：</b><span>${employee_info.get_employee_position()}</span></p>
            <p><b>入职日期：</b><span>${employee_info.get_employee_addworktime()}</span></p>
            <p><b>所属部门：</b><span>${employee_info.get_employee_department_name()}</span></p>
            <p><b>直接上级：</b><span>${employee_info.get_employee_leader_name()}</span></p>
            <p><b>联系电话：</b><span>${employee_info.get_employee_phone()}</span></p>
            <p><b>工作职责：</b><span>${employee_info.get_employee_duty()}</span></p>
        </div>
    </div>
    <div class="wdtzxq_btn">
        <a href="employee_modify.do?employee_id=${employee_id}&employee_page=${employee_page}">修改</a> &nbsp; <a href="employee_check.do?employee_page=${employee_page}">返回</a>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>