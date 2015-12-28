<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="work_page" value="${param.work_page}"/>
    <c:set var="work_total_page" value="${param.work_total_page}"/>
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
                <li><a href="../msg/check_unread_msg.do?employee_id=${user_id}&msg_page=1"><i class="icon icon_m"></i>消息</a></li>
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/contact_person_check.do?employee_id=${user_id}">四联</a></li>
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
    <div class="left_menu w_menu">
        <h3><a href="">工作任务</a></h3>
        <ul>
            <li><a href="work_arrange_display.do?employee_id=${user_id}">安排工作</a></li>
            <li><a href="work_report_display.do?employee_id=${user_id}" >汇报工作</a></li>
            <li><a href="work_feedback_list.do?employee_id=${user_id}&work_page=1">反馈工作</a></li>
            <li><a href="work_pending.do?employee_id=${user_id}&work_page=1" >审批工作</a></li>
            <li><a href="work_all_check.do?employee_id=${user_id}&work_page=1" class="active">全部工作</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="work_all_arrange.do?employee_id=${user_id}&work_page=1" class="red">安排的工作</a><i></i></dd>
                    <dd><a href="work_all_feedback.do?employee_id=${user_id}&work_page=1" >反馈的工作</a></dd>
                    <dd><a href="work_all_report.do?employee_id=${user_id}&work_page=1"  style="border-bottom: 1px solid #c9c9c9;height: 35px">汇报的工作</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a>&gt;<a href="">工作任务</a>&gt;<span>安排的工作</span>
            <span class="sort">按
                <select>
                    <option>请选择</option>
                    <option>时间</option>
                    <option>负责人</option>
                    <option>工作主题</option>
                </select>
                排序
            </span>
        </h4>
        <div class="contentlist">
            <!--表格标题-->
            <ul class="contentlisttt gzdspcontent">
                <li>负责人</li>
                <li>工作主题</li>
                <li>任务类型</li>
                <li>执行周期</li>
                <li>发送时间</li>
                <li>查看</li>
            </ul>
            <!--数据-->
           
         <c:forEach var="work_info" items="${work_info_list}">
            <ul class="gzdspcontent clear">
                <li>${work_info.get_work_receiver()}</li>
                <li>${work_info.get_work_theme()}</li>
                <li>安排</li>
                <li style="line-height: 15px;padding-top: 5px">${work_info.get_work_begintime()}-<br>${work_info.get_work_endtime()}</li>
                <li>${work_info.get_work_addtime()}</li>
                <li>
                    <a href="work_arrange_detail.do?work_id=${work_info.get_work_id()}&work_page=${work_page}">详细</a>
                </li>
            </ul>
            </c:forEach>
            
        </div>
    </div>
    <div class="page">
        <c:choose>
      <c:when test="${work_page==1}">
      <div class="page">
        <a href="work_all_arrange.do?work_page=1&employee_id=${user_id}">上一页</a>
        <a href="work_all_arrange.do?work_page=1&employee_id=${user_id}" class="bulec">1</a>
        <a href="work_all_arrange.do?work_page=2&employee_id=${user_id}">2</a>
        <a href="work_all_arrange.do?work_page=3&employee_id=${user_id}">3</a>
        <a href="work_all_arrange.do?work_page=4&employee_id=${user_id}">4</a>
        <a href="work_all_arrange.do?work_page=5&employee_id=${user_id}">5</a>
        <a href="work_all_arrange.do?work_page=2&employee_id=${user_id}">下一页</a>
        <a>共${work_total_page}页</a>
        <form method="get" action="work_all_arrange.do">
        <a>
           到&nbsp;<input type="text" name="work_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="employee_id" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${work_page==2}">
      <div class="page">
        <a href="work_all_arrange.do?work_page=1&employee_id=${user_id}">上一页</a>
        <a href="work_all_arrange.do?work_page=1&employee_id=${user_id}">1</a>
        <a href="work_all_arrange.do?work_page=2&employee_id=${user_id}" class="bulec">2</a>
        <a href="work_all_arrange.do?work_page=3&employee_id=${user_id}">3</a>
        <a href="work_all_arrange.do?work_page=4&employee_id=${user_id}">4</a>
        <a href="work_all_arrange.do?work_page=5&employee_id=${user_id}">5</a>
        <a href="work_all_arrange.do?work_page=3&employee_id=${user_id}">下一页</a>
        <a>共${work_total_page}页</a>
        <form method="get" action="work_all_arrange.do">
        <a>
           到&nbsp;<input type="text" name="work_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="employee_id" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="work_all_arrange.do?work_page=${work_page-1}&employee_id=${user_id}">上一页</a>
        <a href="work_all_arrange.do?work_page=${work_page-2}&employee_id=${user_id}">${work_page-2}</a>
        <a href="work_all_arrange.do?work_page=${work_page-1}&employee_id=${user_id}">${work_page-1}</a>
        <a class="bulec" href="work_all_arrange.do?work_page=${work_page}&employee_id=${user_id}">${work_page}</a>
        <a href="work_all_arrange.do?work_page=${work_page+1}&employee_id=${user_id}">${work_page+1}</a>
        <a href="work_all_arrange.do?work_page=${work_page+2}&employee_id=${user_id}">${work_page+2}</a>
        <a href="work_all_arrange.do?work_page=${work_page+1}&employee_id=${user_id}">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="work_all_arrange.do">
        <a>
           到&nbsp;<input type="text" name="work_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="employee_id" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:otherwise>
    </c:choose>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>

</body>
</html>