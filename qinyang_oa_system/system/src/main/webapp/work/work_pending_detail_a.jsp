<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
     <c:set var="work_page" value="${param.work_page}"/>
     <c:set var="waiting_id" value="${param.waiting_id}"/>
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
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work"  class="active">工作</a></li>
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
    <h4><a href="">工作</a>&gt;<a href="">工作任务</a>&gt;<span>汇报审批</span></h4>
    <div class="wfwxq">
        <h5>工作主题：<span>${work_info.get_work_theme()}</span>
         <c:choose>
           <c:when test="${work_info.get_work_status()==1}">
            <b class="red">（已通过）</b></h5>
           </c:when>
           <c:when test="${work_info.get_work_status()==2}">
            <b class="red">（未通过）</b></h5>
           </c:when>
           <c:otherwise>
           </h5>
           </c:otherwise>
        </c:choose>
        
        <p>工作目标：<span>${work_info.get_work_target()}</span></p>
        <p>申请人：<span>${work_info.get_work_sender()}</span></p>
        <p>联系电话：<span>${sender_phone}</span></p>
        <p>直接上级：<span>${work_info.get_work_receiver()}</span></p>
        <p>发送时间：<span>${work_info.get_work_addtime()}</span></p>
        <p>执行周期：<span class="dark_grey">${work_info.get_work_begintime()}</span>-<span class="dark_grey">${work_info.get_work_endtime()}</span></p>
    </div>
    <p style="padding: 10px 20px;border-bottom:none;border-top:1px solid #eee">
    <span style="display:block;width:900px;line-height:50px;color:#ccc;text-align:center;">汇报的工作内容</span>
        ${work_info.get_work_content()}
    </p>
    <div class="back">
        <a href="javascript:history.go(-1);">返回</a> 
    </div>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>