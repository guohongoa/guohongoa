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
    <h4><a href="">管理</a>&gt;<span>五服务小组详情</span></h4>
    <div class="border">
        <div class="wdtzxq">
            <p><b>镇(县)名：</b><span>${service_group_info.get_service_village_county_name()}</span></p>

            <p><b>村名：</b><span>${service_group_info.get_service_village_name()}</span></p>
            <c:choose>
            <c:when test="${service_group_info.get_service_type()==0}">
               <p><b>服务小组类型：</b><span>法政法规</span></p>
            </c:when>
             <c:when test="${service_group_info.get_service_type()==1}">
               <p><b>服务小组类型：</b><span>经济发展</span></p>
            </c:when>
             <c:when test="${service_group_info.get_service_type()==2}">
               <p><b>服务小组类型：</b><span>和谐稳定</span></p>
            </c:when>
             <c:when test="${service_group_info.get_service_type()==3}">
               <p><b>服务小组类型：</b><span>环境卫生</span></p>
            </c:when>
            <c:when test="${service_group_info.get_service_type()==4}">
               <p><b>服务小组类型：</b><span>文体活动</span></p>
            </c:when>
            </c:choose>
            <p><b>负责人：</b><span>${service_group_info.get_service_group_leader()}</span></p>

            <p><b>联系电话：</b><span>${service_group_info.get_service_group_phone()}</span></p>

            <p><b>小组职责：</b><span>${service_group_info.get_service_group_duty()}</span></p>

            <p><b>小组成员及电话：</b>
               <span>${service_group_info.get_service_group_member()}</span>

            </p>
        </div>
    </div>
    <div class="wdtzxq_btn">
        <a href="">修改</a> &nbsp; <a href="">返回</a>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>