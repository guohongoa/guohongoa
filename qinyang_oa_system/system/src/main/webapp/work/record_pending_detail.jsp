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
    <h4><a href="../work">工作</a>&gt;<a href="../work/work_pending.do?employee_id=${user_id}&work_page=${work_page}">工作任务</a>&gt;<a href="../work/work_pending.do?employee_id=${user_id}&work_page=${work_page}">审批工作</a>&gt;<span>详情</span></h4>
    <div class="wfwxq" style="padding-bottom:0px;">
        <p><b>审批类型：</b>台账</p>
        <p><b>建账人：</b><span>${work_record_info.get_work_record_creator()}</span></p>
        <p><b>职务：</b><span>${work_record_info.get_work_record_position()}</span></p>
        <p><b>所属部门：</b><span>${work_record_info.get_work_record_department()}</span></p>
        <p><b>直接上级：</b><span>${work_record_info.get_work_record_leader()}</span></p>
        <p><b>党员联系人姓名：</b><span>${work_record_info.get_work_record_communist()}</span></p>
        <p><b>建账日期：</b><span>${work_record_info.get_work_record_date()}</span></p>
    </div>
    <p style="padding: 10px 20px;border-bottom:none;border-top:1px solid #ccc;">
    <span style="display:block;width:900px;line-height:50px;text-align:center;color:#ccc;">台账的工作计划</span>
        ${work_record_info.get_work_record_plan()}
    <span style="display:block;width:900px;line-height:50px;text-align:center;color:#ccc;">台账的落实情况</span>
        ${work_record_info.get_work_record_effect()}
    </p>
    <p style="border: none;margin-top: 10px">
       <form method="post" name="pending_form" id="form">
        <textarea form="form" name="work_comment"  style="width: 880px;height: 225px;border: 1px solid #c9c9c9;font-size: 14px;padding:10px" placeholder="请输入评论或建议"></textarea>
        <input type="hidden" name="waiting_id" value="${waiting_id}" >
        <input type="hidden" name="work_page" value="${work_page}"/>
        <input type="hidden" name="employee_id" value="${user_id}"/>
        <input type="hidden" name="work_id" value="${work_record_info.get_work_record_id()}">
        </form>
    </p>
    <div class="back">
        <a href="javascript:document.pending_form.action='../work/record_pending_agree.do';document.pending_form.submit();">同意</a> 
        &nbsp; 
        <a href="javascript:document.pending_form.action='../work/record_pending_disagree.do';document.pending_form.submit();" style="margin-right: -15px">不同意</a>
    </div>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>