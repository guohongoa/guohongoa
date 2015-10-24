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
<div class="header">
    <!--头部header区域-->
    <div class="h_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li><a href="../user/login.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href=""><i class="icon_s icon"></i>设置</a></li>
                <li><a href=""><i class="icon_m icon"></i>消息</a></li>
                <li><a href=""><i class="icon_g icon"></i>管理</a></li>
                <li><a href="sericetwo.html"><i></i>五服务</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <!--左侧导航-->
    <div class="left_menu">
        <h3>管理</h3>
        <ul>
            <li><a href="serviceone.html">员工编号</a>
            </li>
            <li><a href="serviceone.html"class="active">部门管理</a>
            </li>
            <li><a href="serviceone.html" >制度管理</a>
            </li>
            <li><a href="serviceone.html" >项目管理</a>
            </li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="myservice">
            <h3>管理&gt;人员管理&gt;查看人员列表</h3>
            <div class="myservicetitle">
                <ul>
                    <li class="titleli">员工编号</li>
                    <li class="titleli">员工姓名</li>
                    <li class="titleli">职务</li>
                    <li class="titleli">所属部门</li>
                    <li class="titleli">部门负责人</li>
                    <li class="titleli">入职日期</li>
                    <li class="titleli">联系电话</li>
                    <li class="titleli">操作</li>
                </ul>
            </div>
            <c:forEach var="employee_info" items="${employee_info_list}">
            <div class="myservicecontent">
                <ul>
                    <li class="titleli">${employee_info.get_employee_code()}</li>
                    <li class="titleli">${employee_info.get_employee_name()}</li>
                    <li class="titleli">${employee_info.get_employee_position()}</li>
                    <li class="titleli">${employee_info.get_employee_department()}</li>
                    <li class="titleli">${employee_info.get_employee_leader()}</li>
                    <li class="titleli">${employee_info.get_employee_addworktime()}</li>
                    <li class="titleli">${employee_info.get_employee_phone()}</li>
                    <li class="titleli">查看</li>
                    
                </ul>
            </div>
		</c:forEach>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</body>
</html>