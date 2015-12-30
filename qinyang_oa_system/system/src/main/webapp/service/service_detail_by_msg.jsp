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
                <li><a href="../msg/check_unread_msg.do?employee_id=${user_id}&msg_page=1"><i class="icon icon_m"></i>消息</a></li>
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/contact_person_check.do?employee_id=${user_id}">四联</a></li>
        <li><a href="../service/service_village_check.do" class="active">五服务</a></li>
        <li><a href="../work/">工作</a></li>
        <li><a href="#">嘉言民生</a></li>
        <li><a href="#">政策法规</a></li>
        <li><a href="#">最新资讯</a></li>
        <li><a href="#">党员信息</a></li>
        <li><a href="#">行政办公</a></li>
        <li><a href="#">红色家园</a></li>
    </ul>
</div>
<!--主体-->
<div class="fuwu_content">
    <h4><a href="">五服务</a>&gt;<a href="service_village_check.do">${service_group_info.get_service_village_county_name()}</a>&gt;<a href="service_village_check.do">${service_group_info.get_service_village_name()}</a>&gt;<span>${service_info.get_service_theme()}</span></h4>
    <div class="wfwxq" style="padding-bottom: 12px;padding-top:8px">
        <h5>主题：<span>${service_info.get_service_theme()}</span></h5>
        <p>负 责 人 ：<span class="dark_grey">${service_info.get_service_sender()}</span></p>
        <p>联系电话：<span class="dark_grey">${service_info.get_service_sender_phone()}</span></p>
        <p>小组成员：<span>${service_group_info.get_service_group_member()}</span></p>
        <p>工作职责：<span>${service_group_info.get_service_group_duty()}</span></p>
        <p>活动时间：<span>${service_info.get_service_begintime()}－－${service_info.get_service_endtime()}</span></p>
        <p>服务类型：
        <c:choose>
            <c:when test="${service_info.get_service_type()==0}">
              <span>法政法规服务</span>
            </c:when>
            <c:when test="${service_info.get_service_type()==1}">
              <span>经济发展服务</span>
            </c:when>
            <c:when test="${service_info.get_service_type()==2}">
              <span>和谐稳定服务</span>
            </c:when>
            <c:when test="${service_info.get_service_type()==3}">
              <span>环境卫生服务</span>
            </c:when>
            <c:when test="${service_info.get_service_type()==4}">
              <span>文体活动服务</span>
            </c:when>
        </c:choose>
        </p>
        
        <p>活动周期：<span class="dark_grey">${service_info.get_service_begintime()}</span>-<span class="dark_grey">${service_info.get_service_endtime()}</span></p>
    </div>
    <p style="padding:10px 20px;border-color:#ccc">
        <span style="display:block;width:900px;line-height:50px;text-align:center;color:#ccc">服务小组的活动内容</span>
        ${service_info.get_service_content()}
    </p>
    <div class="back">
        <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_info.get_service_village_id()}&service_type=${service_info.get_service_type()}&service_page=${service_page}">返回</a>
    </div>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>