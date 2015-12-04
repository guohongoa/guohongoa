<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="service_page" value="${param.service_page}"/>
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
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
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
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/contact_person_check.do">四联</a></li>
        <li><a href="../service/service_village_check.do" class="active">五服务</a></li>
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
<div class="fuwu_content">
    <h4><a href="">五服务</a>&gt;<a href="">某某镇</a>&gt;<a href="">某某村</a>&gt;<span>服务主题</span></h4>
    <div class="wfwxq">
        <h5>主题：<span>${service_info.get_service_theme()}</span></h5>
        <p>负责人：<span class="dark_grey">${service_info.get_service_sender()}</span></p>
        <p>联系电话：<span class="dark_grey">${service_info.get_service_sender_phone()}</span></p>
        <p>小组成员：<span>李某、王某、张某</span></p>
        <p>工作职责：<span>工作职责描述</span></p>
        <p>活动时间：<span>2015.12.25</span></p>
        <p>服务类型：<span>${service_info.get_service_type()}</span></p>
        <p>活动周期：<span class="dark_grey">${service_info.get_service_begintime()}</span>-<span class="dark_grey">${service_info.get_service_endtime()}</span></p>
    </div>
    <p>
        服务小组的活动内容
    </p>
    <div class="back">
        <a href="check_service_detail_request.jsp?service_village_id=${service_info.get_service_village_id()}&service_type=${service_info.get_service_type()}&service_page=${service_page}">返回</a>
    </div>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>