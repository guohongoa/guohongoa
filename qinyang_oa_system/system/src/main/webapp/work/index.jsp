<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/">四联</a></li>
        <li><a href="../service">五服务</a></li>
        <li><a href="" class="active">工作</a></li>
        <li><a href="">嘉言民生</a></li>
        <li><a href="">政策法规</a></li>
        <li><a href="">最新资讯</a></li>
        <li><a href="">党员信息</a></li>
        <li><a href="">行政办公</a></li>
        <li><a href="">红色家园</a></li>
    </ul>
</div>
<!--主体-->
<div class="content" id="content">
    <div class="gz" style="border: none">
        <div class="hover_tt">
            <a href=""></a>
        </div>
        <ul>
            <li><a href="">安排工作</a></li>
            <li><a href="">汇报工作</a></li>
            <li><a href="">反馈工作</a></li>
            <li><a href="">待审批</a></li>
            <li><a href="">全部工作</a></li>
        </ul>
    </div>
    <div class="tz">
        <div class="hover_tt">
            <a href="myrecord_request.jsp?record_page=1"></a>
        </div>
        <ul>
            <li><a href="record_add.jsp">添加台帐</a></li>
            <li><a href="myrecord_request.jsp?record_page=1">我的台帐</a></li>
        </ul>
    </div>
    <div class="fw">
        <div class="hover_tt">
            <a href="myservice_request.jsp?service_page=1"></a>
        </div>
        <ul>
            <li><a href="">政策法规服务</a></li>
            <li><a href="">经济发展服务</a></li>
            <li><a href="">和谐稳定服务</a></li>
            <li><a href="">环境卫生服务</a></li>
            <li><a href="">文体活动服务</a></li>
        </ul>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>