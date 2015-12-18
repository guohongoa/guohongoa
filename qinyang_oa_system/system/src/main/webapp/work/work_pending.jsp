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
        <li><a href="../contact/contact_person_check.do">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work" class="active">工作</a></li>
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
    <!--左侧固定导航-->
    <div class="left_menu" style="height: 290px">
        <h3><a href="">工作任务</a></h3>
        <ul>
            <li><a href="work_arrange_display.do?employee_id=${user_id}">安排工作</a></li>
            <li><a href="work_report_display.do?employee_id=${user_id}" >汇报工作</a></li>
            <li><a href="work_feedback_list.do?employee_id=${user_id}">反馈工作</a></li>
            <li><a href="" class="active">待审批</a></li>
            <li><a href="work_all_check.do?employee_id=${user_id}">全部工作</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="../work">工作</a> &gt;<a href="">工作任务</a> &gt;<span>待审批</span>
            <span class="sort">按
                <select>
                    <option>请选择</option>
                    <option>时间</option>
                    <option>申请人</option>
                    <option>工作主题</option>
                </select>
                排序
            </span>
        </h4>
        <div class="contentlist">
            <!--表格标题-->
            <ul class="contentlisttt gzdspcontent">
                <!--
                <li>申请人</li>
                <li>工作主题</li>
                <li>工作目标</li>
                <li>执行周期</li>
                <li>发送时间</li>
                <li>操作</li>
            -->
            <li>审批类型</li>
            <li>申请人</li>
             <li>工作主题</li>
             <li>工作内容</li>
             <li>发送时间</li>
             <li>操作</li>


            </ul>
            <!--数据-->
          <c:forEach var="work_waiting_info" items="${work_waiting_list}">
            <ul class="gzdspcontent clear">
               <c:choose>
                 <c:when test="${work_waiting_info.get_work_category()==0}">
                   <li>工作</li>
                 </c:when>
                 <c:when test="${work_waiting_info.get_work_category()==1}">
                   <li>五服务</li>
                 </c:when>
                 <c:when test="${work_waiting_info.get_work_category()==2}">
                   <li>台账</li>
                 </c:when>
               </c:choose>
                <li>${work_waiting_info.get_work_sender()}</li>
                <li>${work_waiting_info.get_work_theme()}</li>
                <li>${work_waiting_info.get_work_content()}</li>
                <li>${work_waiting_info.get_work_addtime()}</li>
                <li>
                    <a href="">详细</a>
                </li>
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