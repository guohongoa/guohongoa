<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="record_page" value="${param.record_page}"/>
    <c:set var="record_total_page" value="${param.record_total_page}"/>
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
                    <li class="bordernone"><a href="">你有<span>3</span>待带审核记录</a></li>
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
    <div class="left_menu tzlb">
        <h3><a href="">台帐</a></h3>
        <ul>
            <li><a href="myrecord_request.jsp" class="active">全部台帐</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="record_add.jsp">添加台帐</a><i></i></dd>
                    <dd><a href="myrecord_request.jsp?record_page=1">我的台帐</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a>&gt;<a href="">台帐</a>&gt;<span>全部台帐</span>
            <span class="sort">按
                <select>
                    <option>请选择</option>
                    <option>时间</option>
                    <option>职务</option>
                    <option>所属部门</option>
                    <option>建账人</option>
                    <option>直接上级</option>
                </select>
                排序
            </span>
        </h4>
        <div class="contentlist">
            <ul class="contentlisttt tzlb_content">
                <li>建账人</li>
                <li>职务</li>
                <li>所属部门</li>
                <li>直接上级</li>
                <li style="line-height: 20px">党员<br>联系人姓名</li>
                <li>建账日期</li>
                <li>内容</li>
                <li>操作</li>
            </ul>
            <!-- 循环台账列表信息 -->
            <c:forEach var="work_record_info" items="${work_record_info_list}">
            <ul class="tzlb_content">
                <li>${work_record_info.get_work_record_creator()}</li>
                <li>${work_record_info.get_work_record_position()}</li>
                <li>${work_record_info.get_work_record_department()}</li>
                <li>${work_record_info.get_work_record_leader()}</li>
                <li>${work_record_info.get_work_record_communist()}</li>
                <li>${work_record_info.get_work_record_date()}</li>
                <li>内容</li>
                <li><a href="myrecord_info_request.jsp?work_record_id=${work_record_info.get_work_record_id()}&record_page=${record_page}">查看详细</a></li>
            </ul>
            </c:forEach>
        </div>
    </div>
   <c:choose>
      <c:when test="${record_page==1}">
      <div class="page">
        <a href="myrecord_request.jsp?record_page=1">上一页</a>
        <a href="myrecord_request.jsp?record_page=1" class="bulec">1</a>
        <a href="myrecord_request.jsp?record_page=2">2</a>
        <a href="myrecord_request.jsp?record_page=3">3</a>
        <a href="myrecord_request.jsp?record_page=4">4</a>
        <a href="myrecord_request.jsp?record_page=5">5</a>
        <a href="myrecord_request.jsp?record_page=2">下一页</a>
        <a>共${record_total_page}页</a>
        <form method="get" action="rocord_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="record_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="work_record_creatorid" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${record_page==2}">
      <div class="page">
        <a href="myrecord_request.jsp?record_page=1">上一页</a>
        <a href="myrecord_request.jsp?record_page=1">1</a>
        <a href="myrecord_request.jsp?record_page=2" class="bulec">2</a>
        <a href="myrecord_request.jsp?record_page=3">3</a>
        <a href="myrecord_request.jsp?record_page=4">4</a>
        <a href="myrecord_request.jsp?record_page=5">5</a>
        <a href="myrecord_request.jsp?record_page=3">下一页</a>
        <a>共${record_total_page}页</a>
        <form method="get" action="rocord_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="record_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="work_record_creatorid" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="myrecord_request.jsp?record_page=${record_page-1}">上一页</a>
        <a href="myrecord_request.jsp?record_page=${record_page-2}">${record_page-2}</a>
        <a href="myrecord_request.jsp?record_page=${record_page-1}">${record_page-1}</a>
        <a class="bulec" href="myrecord_request.jsp?record_page=${record_page}">${record_page}</a>
        <a href="myrecord_request.jsp?service_page=${record_page+1}">${record_page+1}</a>
        <a href="myrecord_request.jsp?service_page=${record_page+2}">${record_page+2}</a>
        <a href="myrecord_request.jsp?service_page=${record_page+1}">下一页</a>
        <a>共${record_total_page}页</a>
        <form method="get" action="rocord_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="record_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="work_record_creatorid" value="${user_id}" />
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:otherwise>
    </c:choose>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    $(".tzxlms a").click(function(){
        $(this).parent().css({overflow:"visible"}).find("div").show();
        return false
    })
    $(".tzxlms").mouseleave(function(){
        $(this).css({overflow:"hidden"}).find("div").hide();
    })
</script>
</body>
</html>
