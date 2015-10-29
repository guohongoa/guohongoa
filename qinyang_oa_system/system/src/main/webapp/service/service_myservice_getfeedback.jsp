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
<!--判断用户名session是否为空，判断是否登陆  -->
<c:choose>
<c:when test="${not empty user_name}">
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
                <li><a href="../user/login.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href=""><i class="icon_s icon"></i>设置</a></li>
                <li><a href=""><i class="icon_m icon"></i>消息</a></li>
                <li><a href=""><i class="icon_g icon"></i>管理</a></li>
                <li><a href="sericetwo.html"><i></i>五服务</a></li>
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
            <li><a class='active' href="check_service_deploy_request.jsp">我的服务</a>
                <dl>
                    <dt></dt>
                    <dd><a href="check_service_deploy_request.jsp" >安排的服务</a><i></i></dd>
                    <dd><a href="check_service_feedback_request.jsp">反馈的服务</a></dd>
                    <dd ><a href="#" class="activecolor">收到的反馈</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="myservice">
            <h3>任务&gt;我的服务&gt;安排的服务</h3>
            <div class="myservicetitle">
                <ul>
                    <li class="titleli">操作</li>
                    <li class="titleli">安排</li>
                    <li class="titleli">服务主题</li>
                    <li class="titleli">服务类型</li>
                    <li class="titlelio">对接人</li>
                    <li class="titleli">发送时间</li>
                    <li class="titleli">执行周期</li>
                    <li class="titlelio">内容</li>
                </ul>
            </div>
            <c:forEach var="service_info" items="${service_info_list}">
            <div class="myservicecontent">
                <ul>
                    <li class="titleli">
                    <form action="service_del.do" method="post">
                       <input type="hidden" name="service_msgid" value="${service_info.get_service_msgid()}" />  <!--删除服务id-->
                       <input type="hidden" name="service_category" value="${service_info.get_service_category()}"/><!--删除服务的类别，返回页面时使用  -->
                       <input class="bulec btnc" type="submit" value="删除" />
                    </form>
                    </li>
                    <li class="titleli">${service_info.get_service_category()}</li>
                    <li class="titleli">${service_info.get_service_theme()}</li>
                    <li class="titleli">${service_info.get_service_type()}</li>
                    <li class="titlelio">${service_info.get_service_sender()}</li>
                    <li class="titleli">${service_info.get_service_addtime()}</li>
                    <li class="titleli litime">${service_info.get_service_begintime()}-<br/>${service_info.get_service_endtime()}</li>
                    <li class="titlelio"><a href="mytaskcontent.html">${service_info.get_service_content()}</a></li>
                </ul>
            </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>

</c:when>
<c:otherwise>
    <c:redirect url="../index1.jsp" />
</c:otherwise>
</c:choose>

</body>
</html>