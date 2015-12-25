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
                <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
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
        <li><a href="" class="bordernone">首页</a></li>
        <li><a href="">四联</a></li>
        <li><a href="">五服务</a></li>
        <li><a href=""  class="active">工作</a></li>
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
    <h4><a href="">工作</a>&gt;<a href="">工作任务</a>&gt;<span>待审批</span></h4>
    <div class="wfwxq">
        <p><b>建账人：</b><span>${work_record_info.get_work_record_creator()}</span></p>
        <p><b>职务：</b><span>${work_record_info.get_work_record_position()}</span></p>
        <p><b>所属部门：</b><span>${work_record_info.get_work_record_department()}</span></p>
        <p><b>直接上级：</b><span>${work_record_info.get_work_record_leader()}</span></p>
        <p><b>党员联系人姓名：</b><span>${work_record_info.get_work_record_communist()}</span></p>
        <p><b>建账日期：</b><span>${work_record_info.get_work_record_date()}</span></p>
        <p><b>工作计划：</b><span>${work_record_info.get_work_record_plan()}</span></p>
        <p><b>落实情况：</b><span>${work_record_info.get_work_record_effect()}</span></p>
    </div>
    <p style="padding: 10px 20px">
    <span style="display:block;width:900px;line-height:50px;">台账的工作计划</span>
        ${work_record_info.get_work_record_plan()}
    <span style="display:block;width:900px;line-height:50px;">台账的落实情况</span>
        ${work_record_info.get_work_record_effect()}
    </p>
    <p style="border: none;margin-top: 10px">
        <textarea  style="width: 880px;height: 225px;border: 1px solid #c9c9c9;font-size: 14px;padding:10px" placeholder="请输入评论或建议"></textarea>
    </p>
    <div class="back">
        <a href="">同意</a> &nbsp; <a href="" style="margin-right: -15px">不同意</a>
    </div>
</div>
<div class="footer"></div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>