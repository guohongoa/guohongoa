<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="contact_page" value="${param.contact_page}"/>
    <c:set var="contact_total_page" value="${param.contact_total_page}"/>
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
        <li><a href="../contact/contact_person_check.do?employee_id=${user_id}" class="active">四联</a></li>
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
                <span><b>${contact_msg.get_contact_request_sender_name()}</b>申请添加你为联系人</span>
                <span class="message">${contact_msg.get_contact_reuqest_sendmsg()}</span>
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
        <c:choose>
      <c:when test="${contact_page==1}">
      <div class="page">
        <a href="contact_msg_display.do?contact_page=1&contact_request_receiver_id=${user_id}">上一页</a>
        <a href="contact_msg_display.do?contact_page=1&contact_request_receiver_id=${user_id}" class="bulec">1</a>
        <a href="contact_msg_display.do?contact_page=2&contact_request_receiver_id=${user_id}">2</a>
        <a href="contact_msg_display.do?contact_page=3&contact_request_receiver_id=${user_id}">3</a>
        <a href="contact_msg_display.do?contact_page=4&contact_request_receiver_id=${user_id}">4</a>
        <a href="contact_msg_display.do?contact_page=5&contact_request_receiver_id=${user_id}">5</a>
        <a href="contact_msg_display.do?contact_page=2&contact_request_receiver_id=${user_id}">下一页</a>
        <a>共${contact_total_page}页</a>
        <form method="get" action="contact_page">
        <a>
           到&nbsp;<input type="text" name="contact_page" style="width:15px;" value="${contact_page}">&nbsp;页
             <input type="hidden" name="contact_request_receiver_id" value="${user_id}" >
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${contact_page==2}">
      <div class="page">
        <a href="contact_msg_display.do?contact_page=1&contact_request_receiver_id=${user_id}">上一页</a>
        <a href="contact_msg_display.do?contact_page=1&contact_request_receiver_id=${user_id}">1</a>
        <a href="contact_msg_display.do?contact_page=2&contact_request_receiver_id=${user_id}" class="bulec">2</a>
        <a href="contact_msg_display.do?contact_page=3&contact_request_receiver_id=${user_id}">3</a>
        <a href="contact_msg_display.do?contact_page=4&contact_request_receiver_id=${user_id}">4</a>
        <a href="contact_msg_display.do?contact_page=5&contact_request_receiver_id=${user_id}">5</a>
        <a href="contact_msg_display.do?contact_page=3&contact_request_receiver_id=${user_id}">下一页</a>
        <a>共${contact_total_page}页</a>
        <form method="get" action="contact_msg_display.do">
        <a>
           到&nbsp;<input type="text" name="contact_page" style="width:15px;" value="${contact_page}">&nbsp;页
           <input type="hidden" name="contact_request_receiver_id" value="${user_id}" >
            <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="contact_msg_display.do?contact_page=${contact_page-1}&contact_request_receiver_id=${user_id}">上一页</a>
        <a href="contact_msg_display.do?contact_page=${contact_page-2}&contact_request_receiver_id=${user_id}">${contact_page-2}</a>
        <a href="contact_msg_display.do?contact_page=${contact_page-1}&contact_request_receiver_id=${user_id}">${contact_page-1}</a>
        <a class="bulec" href="contact_msg_display.do?contact_page=${contact_page}&contact_request_receiver_id=${user_id}">${contact_page}</a>
        <a href="contact_msg_display.do?contact_page=${contact_page+1}&contact_request_receiver_id=${user_id}">${contact_page+1}</a>
        <a href="contact_msg_display.do?contact_page=${contact_page+2}&contact_request_receiver_id=${user_id}">${contact_page+2}</a>
        <a href="contact_msg_display.do?contact_page=${contact_page+1}&contact_request_receiver_id=${user_id}">下一页</a>
        <a>共${contact_total_page}页</a>
        <form method="get" action="contact_msg_display.do">
        <a>
           到&nbsp;<input type="text" name="contact_page" style="width:15px;" value="${contact_page}">&nbsp;页
             <input type="hidden" name="contact_request_receiver_id" value="${user_id}" >
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