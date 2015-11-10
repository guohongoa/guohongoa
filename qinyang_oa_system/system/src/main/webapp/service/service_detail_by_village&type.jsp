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
                    <li class="bordernone"><a href="">你有<span>3</span>条带审核记录</a></li>
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
        <li><a href="" class="active">五服务</a></li>
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
    <div class="left_menu">
        <h3><a href="">五服务</a></h3>
        <ul>
            <li><a href="" class="active">法政法规服务</a></li>
            <li><a href="">经济发展服务</a></li>
            <li><a href="">和谐稳定服务</a></li>
            <li><a href="">环境卫生服务</a></li>
            <li><a href="">文体活动服务</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">服务</a>&gt;<span>法政法规服务</span></h4>
        <div class="contentlist">
            <ul class="contentlisttt wufuwu">
                <li class="lg_li">服务主题</li>
                <li>负责人</li>
                <li>活动时间</li>
                <li>起始时间</li>
                <li class="lg_li">服务内容</li>
                <li>操作</li>
            </ul>
            <!-- 循环对应村和类型五服务信息 -->
            <c:forEach var="service_info" items="${service_info_list}">
            <ul class="wufuwu">
                <li class="lg_li">${service_info.get_service_theme()}</li>
                <li>${service_info.get_service_sender()}</li>
                <li>2015.10.10</li>
                <li class="sm_lh"><span>${service_info.get_service_begintime()}</span>-<br/><span>${service_info.get_service_endtime()}</span></li>
                <li class="lg_li"><span>服务内容描述服务内容描述服务内容描述服务内容描述服务内容描述服务内容描述服务内容描述</span></li>
                <li><a href="">查看详细</a></li>
            </ul>
            </c:forEach>
        </div>
    </div>
    <div class="page">
        <a href="" class="bulec">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">5</a>
        <a href="">6</a>
        <a href="">上一页</a>
        <a href="">下一页</a>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>