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
        <li><a href="../contact/contact_person_check.do" class="active">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
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
<div class="content siltjlb">
    <!--  <p>共<span>15</span>条消息</p>-->
    <div class="clear" style="background-color: #f8f8f8;height: 800px">
        <div class="sili">
            <!--左侧图标-->
            <div class="silione">
                <span><a class="mess_btn" href=""></a><a href=""></a></span>
            </div>
        </div>
        <ul>
        
           <c:forEach var="contact_msg" items="${contact_msg_list}">
            <li>
                <span><b>${contact_msg.get_contact_request_sender_name()}</b>申请添加你为联系人&nbsp;${contact_msg.get_cotact_reuqest_sendmsg()}</span>
                <span class="slxxlbtime">2015-12-09 11:30</span>
                <!--  
                <select>
                    <option>同意</option>
                    <option>拒绝</option>
                </select>
                -->
                <c:choose>
                <c:when test="${contact_msg.get_contact_request_status()==0}">
                      <a href="contact_deal_commit.do?contact_msg_id=${contact_msg.get_contact_add_msg_id()}&is_agreed=0"><b>同意</b></a>
                      &nbsp;&nbsp;
                      <a href="contact_deal_commit.do?contact_msg_id=${contact_msg.get_contact_add_msg_id()}&is_agreed=1"><b>拒绝</b></a>
                </c:when>
                <c:when test="${contact_msg.get_contact_request_status()==1}">
                     <b>已通过</b>
                </c:when>
                 <c:when test="${contact_msg.get_contact_request_status()==2}">
                     <b>已拒绝</b>
                </c:when>
                </c:choose>
            </li>
            </c:forEach>
        </ul>
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