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
<div class="header">
    <!--头部header区域-->
    <div class="h_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li><a href="../index.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href="../sz/sz.html"><i class="icon_s icon"></i>设置</a></li>
                <li><a href="../xx/xx.html"><i class="icon_m icon"></i>消息</a></li>
                <li><a href="../kh/kh.html"><i class="icon_k icon"></i>考核</a></li>
                <li><a href="../tz/tz.html"><i class="icon_t icon"></i>台账</a></li>
                <li><a href="../gz/gz.html"><i class="icon_g icon"></i>工作</a></li>
                <li><a href="fza.html"><i></i>五服务</a></li>
                <li><a href="../sl/sl.html"><i class="icon_l icon"></i>四联</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <!--左侧导航-->
    <div class="left_menu fuwu">
        <h3>五服务</h3>
        <ul>
            <li><a  href="service_law_deploy.jsp">法政法规服务</a>
            </li>
            <li><a href="service_economy_deploy.jsp"> 经济发展服务</a></li>
            <li><a href="service_harmony_deploy.jsp">和谐稳定服务</a></li>
            <li><a href="service_environment_deploy.jsp">环境卫生服务</a></li>
            <li><a href="service_activity_deploy.jsp">文体活动服务</a></li>
            <li><a class='active' href="wdfw.html">我的服务</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_myservice_deploy.jsp" >安排的服务</a><i></i></dd>
                    <dd><a href="service_myservice_feedback.jsp">反馈的服务</a></dd>
                    <dd><a href="service_myservice_getfeedback.jsp" class="activecolor">收到的反馈</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="myservice">
            <h3><a href="wdfw.html" class="gray">服务</a>&gt;<a href="wdfwa.html" class="gray">我的服务</a>&gt;安排的服务</h3>
            <div class="wdfwg">
                <div class="myservicetitle">
                    <ul>
                        <li class="titleli">安排</li>
                        <li class="titleli">服务主题</li>
                        <li class="titleli">服务类型</li>
                        <li class="titlelio">对接人</li>
                        <li class="titleli">发送时间</li>
                        <li class="titleli">执行周期</li>
                        <li class="titlelio">内容</li>
                    </ul>
                </div>
                <!--下列ul为假数据-->
                <div class="myservicecontent">
                    <ul>
                        <li class="titleli">收到的反馈</li>
                        <li class="titleli">发展集体经济</li>
                        <li class="titleli">经济发展服务</li>
                        <li class="titlelio">赵某</li>
                        <li class="titleli">2015.09.10</li>
                        <li class="titleli litime">2015.09.10-<br/>2015-09.20</li>
                        <li class="titlelio"><a href="wdfwfkx.html" class="bulec">查看</a></li>
                    </ul>
                </div>
                <div class="myservicecontent">
                    <ul>
                        <li class="titleli">收到的反馈</li>
                        <li class="titleli">新的制度</li>
                        <li class="titleli">法政法规服务</li>
                        <li class="titlelio">赵某</li>
                        <li class="titleli">2015.09.10</li>
                        <li class="titleli litime">2015.09.10-<br/>2015-09.20</li>
                        <li class="titlelio"><a href="wdfwfkx.html" class="bulec">查看</a></li>
                    </ul>
                </div>
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
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</body>
</html>