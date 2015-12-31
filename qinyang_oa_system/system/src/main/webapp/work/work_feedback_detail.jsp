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
    <h4><a href="../work">工作</a>&gt;<a href="work_all_check.do?employee_id=${user_id}&work_page=1">工作任务</a>&gt;<a href="work_all_check.do?employee_id=${user_id}&work_page=1">全部工作</a>&gt;<a href="work_all_feedback.do?employee_id=${user_id}&work_page=1">反馈的工作</a>&gt;详情
    <div class="wfwxq">
        <h5>工作主题：<span>${work_info.get_work_theme()}</span></h5>
        <p>工作目标：<span>${work_info.get_work_target()}</span></p>
        <p>发送人：<span>${work_info.get_work_sender()}</span></p>
        <p>联系电话：<span>${work_info.get_work_sender()}</span></p>
        <p>督导人：<span>${work_info.get_work_receiver()}</span></p>
        <p>发送时间：<span>${work_info.get_work_addtime()}</span></p>
        <p>执行周期：<span class="dark_grey">${work_info.get_work_begintime()}</span>-<span class="dark_grey">${work_info.get_work_endtime()}</span></p>
    </div>
    <div style="margin:20px 0 10px;font-size: 14px">
        <span style="padding-left:20px;">完成进度</span>
        <span>
           <c:choose>
              <c:when test="${work_info.get_work_percentage()==0}">
                  <span style="color:#cc0000;font-size:16px;"> 0%</span>
              </c:when>
              <c:otherwise>
                  <span style="color:#cc0000;font-size:16px;">${work_info.get_work_percentage()}0%</span>
              </c:otherwise>
           </c:choose>
        </span>
       
    </div>
    <p style="padding: 10px 20px">
          ${work_info.get_work_content()}
    </p>

    <p style="border-top: none;padding: 10px 20px">
        <span style="display:block;width:860px;line-height:50px;text-align:center;color:#ccc;">安排的工作内容</span>
        ${theme_work_info.get_work_content()}
        
    </p>
    <div class="back">
        <a href="javascript:history.go(-1);" style="margin-right: -15px">返回</a>
    </div>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>