<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
     <c:set var="service_page" value="${param.service_page}"/>
     <c:set var="service_total_page" value="${param.service_total_page}"/>
     <c:set var="flag" value="${param.flag}"/>
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
                    <li class="bordernone"><a href="">你有<span>3</span>条   待审核记录</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/">四联</a></li>
        <li><a href="../service/">五服务</a></li>
        <li><a href="../work/" class="active">工作</a></li>
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
    <div class="left_menu tzlb" style="height: 200px">
        <h3><a href="">五服务</a></h3>
        <ul>
            <c:choose>
                <c:when test="${user_group_type==1}">
                  <li><a href="service_check_by_user.do?service_page=1&flag=0&service_sender_id=${user_id}" class="active">法政法规服务</a>
                </c:when>
                 <c:when test="${user_group_type==2}">
                  <li><a href="service_check_by_user.do?service_page=1&flag=0&service_sender_id=${user_id}" class="active">经济发展服务</a>
                </c:when>
                 <c:when test="${user_group_type==3}">
                  <li><a href="service_check_by_user.do?service_page=1&flag=0&service_sender_id=${user_id}" class="active">和谐稳定服务</a>
                </c:when>
                <c:when test="${user_group_type==4}">
                  <li><a href="service_check_by_user.do?service_page=1&flag=0&service_sender_id=${user_id}" class="active">环境卫生服务</a>
                </c:when>
                <c:when test="${user_group_type==4}">
                  <li><a href="service_check_by_user.do?service_page=1&flag=0&service_sender_id=${user_id}" class="active">环境卫生服务</a>
                </c:when>
            </c:choose>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_send.jsp">发起服务</a><i></i></dd>
                     <c:choose>
                       <c:when test="${flag==1}">
                       <dd><a href="service_check_by_user.do?service_page=1&flag=1&service_sender_id=${user_id}" class="red">我的服务</a></dd>
                       </c:when>
                        <c:otherwise>
                         <dd><a href="service_check_by_user.do?service_page=1&flag=1&service_sender_id=${user_id}" >我的服务</a></dd>
                        </c:otherwise>
                    </c:choose>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <c:choose>
            <c:when test="${user_group_type==1}">
               <h4><a href="../">工作</a>&gt;<a href="#">五服务</a>&gt;<span>法政法规服务</span>
            </c:when>
            <c:when test="${user_group_type==2}">
               <h4><a href="../">工作</a>&gt;<a href="#">五服务</a>&gt;<span>经济发展服务</span>
            </c:when>
            <c:when test="${user_group_type==3}">
               <h4><a href="../">工作</a>&gt;<a href="#">五服务</a>&gt;<span>和谐稳定服务</span>
            </c:when>
            <c:when test="${user_group_type==4}">
               <h4><a href="../">工作</a>&gt;<a href="#">五服务</a>&gt;<span>环境卫生服务</span>
            </c:when>
            <c:otherwise>
               <h4><a href="../">工作</a>&gt;<a href="#">五服务</a>&gt;<span>文体活动服务</span>
            </c:otherwise>
        </c:choose>
        </h4>
        <div class="contentlist">
            <ul class="contentlisttt wfwlb_content ">
                <li>汇报给</li>
                <li>服务主题</li>
                <li>服务类型</li>
                <li>直接上级</li>
                <li>责任人</li>
                <li>工作目标</li>
                <li>服务周期</li>
                <li>服务内容</li>
                <li>发送时间</li>
            </ul>
             <c:forEach var="service_info" items="${service_info_list}">
             <ul class="wfwlb_content">
                <li>${service_info.get_service_receiver()}</li>
                <li>${service_info.get_service_theme()}</li>
                <li>${service_info.get_service_type()}</li>
                <li>${service_info.get_service_sender()}</li>
                <li>${service_info.get_service_sender()}</li>
                <li class="overflow">${service_info.get_service_target()}</li>
                <li style="line-height: 20px">${service_info.get_service_begintime()}-<br/>${service_info.get_service_endtime()}</li>
                <li><a href="check_service_info_by_service_msgid2.do?service_msgid=${service_info.get_service_msgid()}&service_page=${service_page}&flag=${flag}">查看</a></li>
                <li>${service_info.get_service_addtime()}</li>
              </ul>
            </c:forEach>
        </div>
    </div>
   <c:choose>
      <c:when test="${service_page==1}">
      <div class="page">
        <a href="service_check_by_user.do?service_page=1&flag=${flag}&service_sender_id=${user_id}">上一页</a>
        <a href="service_check_by_user.do?service_page=1&flag=${flag}&service_sender_id=${user_id}" class="bulec">1</a>
        <a href="service_check_by_user.do?service_page=2&flag=${flag}&service_sender_id=${user_id}">2</a>
        <a href="service_check_by_user.do?service_page=3&flag=${flag}&service_sender_id=${user_id}">3</a>
        <a href="service_check_by_user.do?service_page=4&flag=${flag}&service_sender_id=${user_id}">4</a>
        <a href="service_check_by_user.do?service_page=5&flag=${flag}&service_sender_id=${user_id}">5</a>
        <a href="service_check_by_user.do?service_page=2&flag=${flag}&service_sender_id=${user_id}">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="service_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="service_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="service_sender_id" value="${user_id}" />
             <input type="hidden" name="flag" value="${flag}">
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${service_page==2}">
      <div class="page">
        <a href="service_check_by_user.do?service_page=1&flag=${flag}&service_sender_id=${user_id}">上一页</a>
        <a href="service_check_by_user.do?service_page=1&flag=${flag}&service_sender_id=${user_id}">1</a>
        <a href="service_check_by_user.do?service_page=2&flag=${flag}&service_sender_id=${user_id}" class="bulec">2</a>
        <a href="service_check_by_user.do?service_page=3&flag=${flag}&service_sender_id=${user_id}">3</a>
        <a href="service_check_by_user.do?service_page=4&flag=${flag}&service_sender_id=${user_id}">4</a>
        <a href="service_check_by_user.do?service_page=5&flag=${flag}&service_sender_id=${user_id}">5</a>
        <a href="service_check_by_user.do?service_page=3&flag=${flag}&service_sender_id=${user_id}">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="service_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="service_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="service_sender_id" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="service_check_by_user.do?service_page=${service_page-1}&flag=${flag}&service_sender_id=${user_id}">上一页</a>
        <a href="service_check_by_user.do?service_page=${service_page-2}&flag=${flag}&service_sender_id=${user_id}">${service_page-2}</a>
        <a href="service_check_by_user.do?service_page=${service_page-1}&flag=${flag}&service_sender_id=${user_id}">${service_page-1}</a>
        <a class="bulec" href="service_check_by_user.do?service_page=${service_page}&flag=${flag}&service_sender_id=${user_id}">${service_page}</a>
        <a href="service_check_by_user.do?service_page=${service_page+1}&flag=${flag}&service_sender_id=${user_id}">${service_page+1}</a>
        <a href="service_check_by_user.do?service_page=${service_page+2}&flag=${flag}&service_sender_id=${user_id}">${service_page+2}</a>
        <a href="service_check_by_user.do?service_page=${service_page+1}&flag=${flag}&service_sender_id=${user_id}">下一页</a>
        <a>共${service_total_page}页</a>
        <form method="get" action="service_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="service_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="service_sender_id" value="${user_id}" />
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