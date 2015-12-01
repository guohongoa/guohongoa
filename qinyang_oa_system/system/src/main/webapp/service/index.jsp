<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
</head>
<body>
<c:choose>
<c:when test="${not empty village_list}">

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
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact">四联</a></li>
        <li><a href="" class="active">五服务</a></li>
        <li><a href="../work">工作</a></li>
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
    <!--所有乡镇-->
    <div class="fuwu">
        <!--每个乡镇为一个模块-->
        <c:forEach var="service_village_info_list" items="${village_list}">
        <div class="fwk">
            <h4><a href="">${service_village_info_list.get(0).get_service_village_county_name()}</a></h4>
            <ul>
                <c:forEach var="service_village_info" items="${service_village_info_list}">
                <li>
                  <a href="check_service_detail_request.jsp?service_village_id=${service_village_info.get_service_village_id()}&service_type=0&service_page=1">${service_village_info.get_service_village_name()}</a>
                </li>
                </c:forEach>
                <li><a href="" class="clickall">全部&gt;&gt;</a></li>
            </ul>
        </div>
        </c:forEach>
        
        <div class="pop">
            <div class="pop_content">
                <h4>乡镇一</h4>
                <ul>
                    <li><a href="">清平村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                    <li><a href="">某某村</a></li>
                </ul>
                <p><a href="" class="clickhide">关闭</a></p>
            </div>
        </div>
    </div>

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</c:when>
<c:otherwise>
    <!--五服务主页面跳转 -->
    <c:redirect url="check_service_village_request.jsp" />
</c:otherwise>
</c:choose>
</body>
</html>