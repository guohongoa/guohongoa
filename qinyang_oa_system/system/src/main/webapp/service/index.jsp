<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
        <li><a href="#" class="active">五服务</a></li>
        <li><a href="../work">工作</a></li>
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
    <!--所有乡镇-->
    <div class="fuwu">
    
     <!--每个乡镇为一个模块-->
        <c:forEach var="service_village_info_list" items="${village_list}" varStatus="loop">
        <c:choose>
           <c:when test="${loop.index%4==3}">
               <div class="fwk clearstyle" >
           </c:when>
           <c:otherwise>
               <div class="fwk">
           </c:otherwise>
        </c:choose>
            <h4><a href="">${service_village_info_list.get(0).get_service_village_county_name()}</a></h4>
            <ul>
                <c:choose>
                <c:when test="${service_village_info_list.size()<10}">
                   <c:forEach var="service_village_info" items="${service_village_info_list}">
                     <li>
                       <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info.get_service_village_id()}&service_type=0&service_page=1">${service_village_info.get_service_village_name()}</a>
                     </li>
                   </c:forEach>
                </c:when>
                <c:otherwise>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(0).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(0).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(1).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(1).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(2).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(2).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(3).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(3).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(4).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(4).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(5).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(5).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(6).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(6).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(7).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(7).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(8).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(8).get_service_village_name()}</a></li>
                    <li> <a href="check_service_detail_by_service_village_id.do?service_village_id=${service_village_info_list.get(9).get_service_village_id()}&service_type=0&service_page=1">${service_village_info_list.get(9).get_service_village_name()}</a></li>
                </c:otherwise>
                </c:choose>
                <li><a id="${service_village_info_list.get(0).get_service_village_county_id()}" href="" class="clickall">全部&gt;&gt;</a></li>
            </ul>
        </div>
        </c:forEach>
        
        
       <div class="pop">
            <div class="pop_content">
                <h4>乡镇</h4>
                <ul class="all_contents">
                    <li style="width:300px;text-align:center;margin:0 auto;line-height:200px;">页面建设中......</li>
                    
                </ul>
                <p><a href="" class="clickhide">关闭</a></p>
            </div>
        </div>
    </div>

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
var path="guohong";
//var path="system";
$(".clickall").click(function()
{
	var id=$(this).attr("id");
	console.log("id:"+id);
	htmlobj=$.ajax({url:"/"+path+"/service/service_village_by_county_id.do?county_id="+id,async:false});
	$(".all_contents").html(htmlobj.responseText);
});
</script>
</body>
</html>