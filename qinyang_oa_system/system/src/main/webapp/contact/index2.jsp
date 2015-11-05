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
        <li><a href="" class="active">四联</a></li>
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
    <div class="sili">
        <!--第一列-->
        <div class="silione">
            <span><i></i><b></b></span>
            <c:forEach var="contact_person_info_list" items="${contact_list}">
            <c:choose>
             <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==7}">
                 <div class="swcw sili_content1">
            </c:when>
             <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==1}">
                 <div class="swcw sili_content2">
            </c:when>
            <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==3}">
                 <div class="swcw sili_content3">
            </c:when>
            <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==5}">
                 <div class="swcw sili_content4">
            </c:when>
            <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==8}">
                 <div class="swcw sili_content5">
            </c:when>
             <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==11}">
                 <div class="swcw sili_content6">
            </c:when>
             <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==9}">
                 <div class="swcw sili_content7">
            </c:when>
             <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==2}">
                 <div class="swcw sili_content8">
            </c:when>
            <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==4}">
                 <div class="swcw sili_content9">
            </c:when>
            <c:when test="${contact_person_info_list.get(0).get_contact_person_department_id()==6}">
                 <div class="swcw sili_content10">
            </c:when>
            <c:otherwise>
                 <div class="swcw sili_content11">
            </c:otherwise>
            </c:choose>
                <h4> 党员群众服务中心<br>嘉言民生代办员</h4>
                <div>
                    <ul>
                     <c:forEach var="contact_person_info" items="${contact_person_info_list}">
                        <li><a href="">${contact_person_info.get_contact_person_name()}</a></li>
                     </c:forEach>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">展开</a></p>
                    <i></i>
                </div>

            </div>
            </c:forEach>
        </div>
  </div>>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>