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
                <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href="#"><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>待待审核记录</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/contact_person_check.do">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work/">工作</a></li>
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
    <!--左侧固定导航-->
    <div class="left_menu" style="height: 150px">
        <h3><a href="">设置</a></h3>
        <ul>
            <li><a href="#" class="active">个人信息</a></li>
            <li><a href="change_password.jsp">修改密码</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">设置</a>&gt;<span>个人资料</span></h4>
        <div class="setting">
            <h6>个人资料</h6>
            <div class="setting_content">
                <p><span class="spacing">姓名</span>：<b>${employee_info.get_employee_name()}</b></p>
                <c:choose>
                   <c:when test="${employee_info.get_employee_gender()==0}">
                      <p><span class="spacing">性别</span>：<b>男</b></p>
                   </c:when>
                   <c:otherwise>
                       <p><span class="spacing">性别</span>：<b>女</b></p>
                   </c:otherwise>
                </c:choose>
                <p><span>出生日期</span>：<b>${employee_info.get_employee_birthdate()}</b></p>
                <p><span>身份证号</span>：<b>${employee_info.get_employee_idcode()}</b></p>
                <p><span class="spacing">职务</span>：<b>${employee_info.get_employee_position()}</b></p>
                <p><span>入职日期</span>：<b>${employee_info.get_employee_addworktime()}</b></p>
                <p><span>所属部门</span>：<b>${employee_department}</b></p>
                <p><span>直接上级</span>：<b>${employee_leader}</b></p>
                <p><span class="spacing">手机</span>：<b>${employee_info.get_employee_phone()}</b></p>
            </div>
        </div>
        <div class="tztj_btn"><input type="button" value="提交"/> <input type="reset" value="重置"/></div>
    </div>
</div>
    <script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
    <script src="http://101.200.196.121:8080/oa/js/style.js"></script>

</body>
</html>