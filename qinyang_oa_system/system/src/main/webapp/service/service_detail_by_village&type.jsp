<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="service_village_id" value="${param.service_village_id}"/>
    <c:set var="service_type" value="${param.service_type}"/>
    <c:set var="service_page" value="${param.service_page}"/>
     <c:set var="service_total_page" value="${param.service_total_page}"/>
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
        <li><a href="../contact/contact_person_check.do?employee_id=${user_id}">四联</a></li>
        <li><a href="../service/service_village_check.do" class="active">五服务</a></li>
        <li><a href="../work/">工作</a></li>
        <li><a href="#">嘉言民生</a></li>
        <li><a href="#">政策法规</a></li>
        <li><a href="#">最新资讯</a></li>
        <li><a href="#">党员信息</a></li>
        <li><a href="#">行政办公</a></li>
        <li><a href="#">红色家园</a></li>
    </ul>
</div>
<!--主体-->
<div class="content">
    <div class="left_menu">
        <h3><a href="service_village_check.do">五服务</a></h3>
        <c:choose>
         <c:when test="${service_type==0}">
            <ul>
               <li><a href="" class="active">法政法规服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=1&service_page=1">经济发展服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=2&service_page=1">和谐稳定服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=3&service_page=1">环境卫生服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=4&service_page=1">文体活动服务</a></li>
            </ul>
          </c:when>
           <c:when test="${service_type==1}">
            <ul>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=0&service_page=1">法政法规服务</a></li>
               <li><a href="" class="active">经济发展服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=2&service_page=1">和谐稳定服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=3&service_page=1">环境卫生服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=4&service_page=1">文体活动服务</a></li>
            </ul>
          </c:when>
          <c:when test="${service_type==2}">
            <ul>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=0&service_page=1">法政法规服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=1&service_page=1">经济发展服务</a></li>
               <li><a href="" class="active">和谐稳定服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=3&service_page=1">环境卫生服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=4&service_page=1">文体活动服务</a></li>
            </ul>
          </c:when>
          <c:when test="${service_type==3}">
            <ul>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=0&service_page=1">法政法规服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=1&service_page=1">经济发展服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=2&service_page=1">和谐稳定服务</a></li>
               <li><a href="" class="active">环境卫生服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=4&service_page=1">文体活动服务</a></li>
            </ul>
          </c:when>
          <c:when test="${service_type==4}">
            <ul>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=0&service_page=1">法政法规服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=1&service_page=1">经济发展服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=2&service_page=1">和谐稳定服务</a></li>
               <li><a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=3&service_page=1">环境卫生服务</a></li>
               <li><a href="" class="active">文体活动服务</a></li>
            </ul>
          </c:when>
        </c:choose>
    </div>
    <!--右侧-->
    <div class="right_content">
        <c:choose>
            <c:when test="${service_type==0}">
              <h4><a href="service_village_check.do">服务</a>&gt;<span>法政法规服务</span></h4>
            </c:when>
            <c:when test="${service_type==1}">
              <h4><a href="service_village_check.do">服务</a>&gt;<span>经济发展服务</span></h4>
            </c:when>
            <c:when test="${service_type==2}">
              <h4><a href="service_village_check.do">服务</a>&gt;<span>和谐稳定服务</span></h4>
            </c:when>
            <c:when test="${service_type==3}">
              <h4><a href="service_village_check.do">服务</a>&gt;<span>环境卫生服务</span></h4>
            </c:when>
            <c:when test="${service_type==4}">
              <h4><a href="service_village_check.do">服务</a>&gt;<span>文体活动服务</span></h4>
            </c:when>
        </c:choose>
        <div class="contentlist">
            <ul class="contentlisttt wufuwu">
                <li class="lg_li">服务主题</li>
                <li>负责人</li>
                <li>审批人</li>
                <li>起始时间</li>
                <li class="lg_li">服务内容</li>
                <li>操作</li>
            </ul>
            <!-- 循环对应村和类型五服务信息 -->
            <c:forEach var="service_info" items="${service_info_list}">
            <ul class="wufuwu clear">
                <li class="lg_li">${service_info.get_service_theme()}</li>
                <li>${service_info.get_service_sender()}</li>
                <li>${service_info.get_service_receiver()}</li>
                <li class="sm_lh" style="width: 80px"><span>${service_info.get_service_begintime()}</span>-<br/><span>${service_info.get_service_endtime()}</span></li>
                <li class="lg_li" style="*position:relative">
                <span class="pop_click">点击查看</span>
                <div class="pop_fwcontent">${service_info.get_service_content()}</div>
                </li>
                <li><a href="check_service_info_by_service_msgid.do?service_msgid=${service_info.get_service_msgid()}&service_page=${service_page}">查看详细</a></li>
            </ul>
            </c:forEach>
        </div>
    </div>
    <c:choose>
      <c:when test="${service_page==1}">
      <div class="page">
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=1">上一页</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=1" class="bulec">1</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=2">2</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=3">3</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=4">4</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=5">5</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=2">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="check_service_detail_by_service_village_id.do">
        <a>
           到&nbsp;<input type="text" name="service_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="service_village_id" value="${service_village_id}"/>
             <input type="hidden" name="service_type" value="${service_type}"/>
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${service_page==2}">
      <div class="page">
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=1">上一页</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=1">1</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=2" class="bulec">2</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=3">3</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=4">4</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=5">5</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=3">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="check_service_detail_by_service_village_id.do">
        <a>
           到&nbsp;<input type="text" name="service_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="service_village_id" value="${service_village_id}"/>
             <input type="hidden" name="service_type" value="${service_type}"/>
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=${service_page-1}">上一页</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=${service_page-2}">${service_page-2}</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=${service_page-1}">${service_page-1}</a>
        <a class="bulec" href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=0&service_page=${service_page}">${service_page}</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=${service_page+1}">${service_page+1}</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=0&service_page=${service_page+2}">${service_page+2}</a>
        <a href="check_service_detail_request.jsp?service_village_id=${service_village_id}&service_type=${service_type}&service_page=${service_page+1}">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="check_service_detail_by_service_village_id.do">
        <a>
           到&nbsp;<input type="text" name="service_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="service_village_id" value="${service_village_id}"/>
             <input type="hidden" name="service_type" value="${service_type}"/>
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:otherwise>
    </c:choose>
    
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>