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
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>待审核记录</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/contact_person_check.do">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="#" class="active">工作</a></li>
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
            <a href="work_arrange_display.do?employee_id=${user_id}"></a>
        </div>
        <ul>
            <li class="hovercolor" ><a href="work_arrange_display.do?employee_id=${user_id}">安排工作</a></li>
            <li class="hovercolor" ><a href="work_report_display.do?employee_id=${user_id}">汇报工作</a></li>
            <li class="hovercolor" ><a href="work_feedback_list.do?employee_id=${user_id}&work_page=1">反馈工作</a></li>
            <li class="hovercolor" ><a href="work_pending.do?employee_id=${user_id}">待审批</a></li>
            <li class="hovercolor" ><a href="work_all_check.do?employee_id=${user_id}&work_page=1">全部工作</a></li>
        </ul>
    </div>
    <div class="tz">
        <div class="hover_tt">
            <a href="record_check_by_user.do?work_record_creatorid=${user_id}&record_page=1&flag=0"></a>
        </div>
        <ul>
            <li class="hovercolor" ><a href="record_send_display.do?employee_id=${user_id}">添加台帐</a></li>
            <li class="hovercolor" ><a href="record_check_by_user.do?work_record_creatorid=${user_id}&record_page=1&flag=1">我的台帐</a></li>
        </ul>
    </div>
    <div class="fw">
        <div class="hover_tt">
            <c:choose>
                <c:when test="${user_group_type!=0}">
                    <a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=0"></a>
                </c:when>
                <c:otherwise>
                    <a href="#"></a>
                </c:otherwise>
            </c:choose>
        </div>
        <ul>
          <c:choose>
            <c:when test="${user_group_type==0}">
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">法政法规服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">经济发展服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">和谐稳定服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">环境卫生服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">文体活动服务</a></li>
            </c:when>
            <c:when test="${user_group_type==1 }">
                <li class="hovercolor"><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=1">法政法规服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">经济发展服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">和谐稳定服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">环境卫生服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">文体活动服务</a></li>
            </c:when>
            <c:when test="${user_group_type==2 }">
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9" >法政法规服务</a></li>
                <li class="hovercolor"><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=1">经济发展服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">和谐稳定服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">环境卫生服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">文体活动服务</a></li>
            </c:when>
            <c:when test="${user_group_type==3 }">
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">法政法规服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">经济发展服务</a></li>
                <li class="hovercolor"><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=1">和谐稳定服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">环境卫生服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">文体活动服务</a></li>
            </c:when>
            <c:when test="${user_group_type==4 }">
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">法政法规服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">经济发展服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">和谐稳定服务</a></li>
                <li class="hovercolor" ><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=1">环境卫生服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">文体活动服务</a></li>
            </c:when>
            <c:when test="${user_group_type==5 }">
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">法政法规服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">经济发展服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">和谐稳定服务</a></li>
                <li style="color:#c9c9c9"><a href="#" style="color:#c9c9c9">环境卫生服务</a></li>
                <li class="hovercolor"><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=1">文体活动服务</a></li>
            </c:when>
          </c:choose>
        </ul>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    $(".hovercolor").mouseover(function(){
        $(this).css({color:"#32beff"});
    }).mouseout(function(){
        $(this).css({color:"#636363"});
    })
</script>
</body>
</html>