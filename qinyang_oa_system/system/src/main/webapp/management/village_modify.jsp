<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="village_page" value="${param.village_page}"/>
    <c:set var="service_village_county_id" value="${param.service_village_county_id}"/>
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
        <li><a href="../contact/contact_person_check.do">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work/">工作</a></li>
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
    <div class="left_menu tzlb" style="height: 290px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li style="margin-bottom: -7px"><a href="check_service_village_detail.do?village_page=1" class="active">村镇管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="village_add.jsp">添加村镇</a><i></i></dd>
                    <dd><a href="department_check.do?department_page=1" class="red">修改</a></dd>
                </dl>
            </li>
            <li><a href="department_check.do?department_page=1" >部门管理</a></li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="check_service_village_detail.do?village_page=1">管理</a> &gt;<a href="check_service_village_detail.do?village_page=1">村镇管理</a> &gt;<span>村镇详情修改</span></h4>
        <div class="tztj bmtjxg">
            <form id="post_city" action="village_update_commit.do" method="post">
            <input type="hidden" name="service_village_county_id" value="${service_village_county_info.get_service_village_county_id()}">
                <p><span>镇(县)名</span><input class="input600" type="text"  name="service_village_county_name" value="${service_village_county_info.get_service_village_county_name()}"/></p>
                <p><span>负责人</span><input type="text" name="service_village_county_leader" value="${service_village_county_info.get_service_village_county_leader()}"/></p>
                <p><span>电话</span><input type="text" name="service_village_county_leaderphone" value="${service_village_county_info.get_service_village_county_leaderphone()}"/></p>
                <p><span>包含村</span><textarea name="str_service_village_names" form="post_city">${str_service_village_names}</textarea></p>
                <input type="hidden" name="village_page" value="${village_page}">
                <p class="tztj_btn" ><b class="login-error"></b>
                    <button>确定修改</button>
                    <a href="village_modify.do?service_village_county_id=${service_village_county_id}&village_page=${village_page}">重置</a>
                </p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>