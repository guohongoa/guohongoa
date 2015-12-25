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
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href=""><span>888</span>条工作提醒</a></li>
                    <li><a href=""><span>2</span>条服务提醒</a></li>
                    <li><a href=""><span>3</span>条待审核记录</a></li>
                    <li class="bordernone"><a href=""><span>99</span>条添加信息</a></li>
                </ul>
            </div>
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
    <h4><a href="">工作</a> &gt;<a href="">工作任务</a> &gt;<span>反馈工作</span></h4>
    <div class="wfwxq" >
        <h5>工作主题：<span>${work_info.get_work_theme()}</span></h5>
        <p>工作目标：<span>${work_info.get_work_target()}</span></p>
        <p>上级领导：<span>${work_info.get_work_sender()}</span></p>
        <p>联系电话：<span>1380000000</span></p>
        <p>责任人：<span>${work_info.get_work_receiver()}</span></p>
        <p>发送时间：<span>${work_info.get_work_addtime()}</span></p>
        <p>执行周期：<span class="dark_grey">${work_info.get_work_begintime()}</span>-<span class="dark_grey">${work_info.get_work_endtime()}</span></p>
    </div>
    <p style="padding: 10px 20px">
        ${work_info.get_work_content()}
    </p>
    <!--由于回复信息，收发双方位置需交换-->
    <form action="feedback_commit.do" method="post" name="feedback_form" id="feedback_commit_form">
    <input type="hidden" name="work_sender_id" value="${work_info.get_work_receiver_id()}">
    <input type="hidden" name="work_sender" value="${work_info.get_work_receiver()}">
    <input type="hidden" name="work_receiver_id" value="${work_info.get_work_sender_id()}">
     <input type="hidden" name="work_receiver" value="${work_info.get_work_sender()}">
    <input type="hidden" name="work_theme" value="${work_info.get_work_theme()}">
    <input type="hidden" name="work_begintime" value="${work_info.get_work_begintime()}">
    <input type="hidden" name="work_endtime" value="${work_info.get_work_endtime()}">
    <input type="hidden" name="work_type" value="${work_info.get_work_type()}">
    <input type="hidden" name="work_target" value="${work_info.get_work_target()}">
    <input type="hidden" name="work_start" value="1">
     <input type="hidden" name="work_related_id" value="${work_info.get_work_id()}">
     
     <input type="hidden" name="work_times" value="${work_info.get_work_times()+1}">
    
    <div style="padding:20px 0px;font-size: 14px;">
        <span>完成进度</span>
        <select style="width: 80px;margin-left: 5px" name="work_percentage" form="feedback_commit_form">
            <option value="10">100%</option>
            <option value="9">90%</option>
            <option value="8">80%</option>
            <option value="7">70%</option>
            <option value="6">60%</option>
            <option value="5">50%</option>
            <option value="4">40%</option>
            <option value="3">30%</option>
            <option value="2">20%</option>
            <option value="1">10%</option>
        </select>
    </div>
    <p style="border: none">
        <textarea name="work_content" form="feedback_commit_form"  style="width:880px;height:300px;font-size: 14px;padding: 10px">输入反馈信息</textarea>
    </p>
    <div class="back">
        <a href="javascript:document.feedback_form.submit();">反馈</a> &nbsp;<a href="work_feedback_list.do?work_page=${work_page}employee_id=${user_id}" style="margin: 0 -15px 0 0 ">返回</a>
    </div>
    </form>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>