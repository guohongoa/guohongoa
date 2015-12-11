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
    <div class="left_menu tzlb" style="height: 215px">
        <h3><a href="">台账</a></h3>
        <ul>
            <li><a href="myrecord_request.jsp?record_page=1&flag=0" class="active">全部台账</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="record_add.jsp">添加台账</a><i></i></dd>
                    <dd><a href="../error.jsp"  >修改台账</a></dd>
                    <dd><a href="myrecord_request.jsp?record_page=1&flag=1" class="red" style="border-bottom: 1px solid #c9c9c9;height: 35px">我的台账</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a>&gt;<a href="">台账</a>&gt;<span>我的台账</span>
        </h4>
        <div class="contentlist">
            <ul class="contentlisttt tzlb_content">
                <li>建账人</li>
                <li>职务</li>
                <li>所属部门</li>
                <li>直接上级</li>
                <li style="line-height: 15px;padding-top: 5px">党员<br>联系人姓名</li>
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
                <li>
                   <a href="check_record_info_by_work_record_id.do?work_record_id=${work_record_info.get_work_record_id()}&record_page=${record_page}&flag=${flag}">查看</a>
                   <a href="../error.jsp">修改</a>
                   <a href="../error.jsp">删除</a>
                </li>
            </ul>
            </c:forEach>
        </div>
    </div>
    
    <c:choose>
      <c:when test="${record_page==1}">
      <div class="page">
        <a href="record_check_by_user.do?record_page=1&flag=${flag}&work_record_creatorid=${user_id}">上一页</a>
        <a href="record_check_by_user.do?record_page=1&flag=${flag}&work_record_creatorid=${user_id}" class="bulec">1</a>
        <a href="record_check_by_user.do?record_page=2&flag=${flag}&work_record_creatorid=${user_id}">2</a>
        <a href="record_check_by_user.do?record_page=3&flag=${flag}&work_record_creatorid=${user_id}">3</a>
        <a href="record_check_by_user.do?record_page=4&flag=${flag}&work_record_creatorid=${user_id}">4</a>
        <a href="record_check_by_user.do?record_page=5&flag=${flag}&work_record_creatorid=${user_id}">5</a>
        <a href="record_check_by_user.do?record_page=2&flag=${flag}&work_record_creatorid=${user_id}">下一页</a>
        <a>共${record_total_page}页</a>
        <form method="get" action="rocord_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="record_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="work_record_creatorid" value="${user_id}" />
             <input type="hidden" name="flag" value="${flag}"/>
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${record_page==2}">
      <div class="page">
        <a href="record_check_by_user.do?record_page=1&flag=${flag}&work_record_creatorid=${user_id}">上一页</a>
        <a href="record_check_by_user.do?record_page=1&flag=${flag}&work_record_creatorid=${user_id}">1</a>
        <a href="record_check_by_user.do?record_page=2&flag=${flag}&work_record_creatorid=${user_id}" class="bulec">2</a>
        <a href="record_check_by_user.do?record_page=3&flag=${flag}&work_record_creatorid=${user_id}">3</a>
        <a href="record_check_by_user.do?record_page=4&flag=${flag}&work_record_creatorid=${user_id}">4</a>
        <a href="record_check_by_user.do?record_page=5&flag=${flag}&work_record_creatorid=${user_id}">5</a>
        <a href="record_check_by_user.do?record_page=3&flag=${flag}&work_record_creatorid=${user_id}">下一页</a>
        <a>共${record_total_page}页</a>
        <form method="get" action="rocord_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="record_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="work_record_creatorid" value="${user_id}" />
             <input type="hidden" name="flag" value="${flag}"/>
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="record_check_by_user.do?record_page=${record_page-1}&flag=${flag}&work_record_creatorid=${user_id}">上一页</a>
        <a href="record_check_by_user.do?record_page=${record_page-2}&flag=${flag}&work_record_creatorid=${user_id}">${record_page-2}</a>
        <a href="record_check_by_user.do?record_page=${record_page-1}&flag=${flag}&work_record_creatorid=${user_id}">${record_page-1}</a>
        <a class="bulec" href="record_check_by_user.do?record_page=${record_page}&flag=${flag}&work_record_creatorid=${user_id}">${record_page}</a>
        <a href="record_check_by_user.do?service_page=${record_page+1}&flag=${flag}&work_record_creatorid=${user_id}">${record_page+1}</a>
        <a href="record_check_by_user.do?service_page=${record_page+2}&flag=${flag}&work_record_creatorid=${user_id}">${record_page+2}</a>
        <a href="record_check_by_user.do?service_page=${record_page+1}&flag=${flag}&work_record_creatorid=${user_id}">下一页</a>
        <a>共${record_total_page}页</a>
        <form method="get" action="rocord_check_by_user.do">
        <a>
           到&nbsp;<input type="text" name="record_page" style="width:15px;">&nbsp;页
             <input type="hidden" name="work_record_creatorid" value="${user_id}" />
             <input type="hidden" name="flag" value="${flag}"/>
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
   /*
    function func(){
        var vs = document.getElementById("select");
        var grade = vs.options[vs.selectedIndex].value;
        switch(grade){
            case "1":window.location.href='http://www.taobao.com/';
                break;
            case "2":window.location.href='http://www.jd.com/';
                break;
            case "3":window.location.href='http://www.baidu.com/';
        }

    }
    */

</script>
</body>
</html>
