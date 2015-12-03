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
                <li><a href=""><i class="icon icon_m"></i>消息</a></li>
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
            </ul>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="" class="bordernone">首页</a></li>
        <li><a href="">四联</a></li>
        <li><a href="">五服务</a></li>
        <li><a href="">工作</a></li>
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
    <div class="left_menu tzlb" style="height: 325px">
        <h3>管理</h3>
        <ul>
            <li><a href="＃" class="active">村镇管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="village_add.jsp">添加村镇</a><i></i></dd>
                </dl>
            </li>
            <li><a href="department_check.do">部门管理</a></li>
            <li><a href="employee_check.do">人员管理</a>
            </li>
            <li><a href="service_group_check.do">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<span>村镇管理</span></h4>
        <h5><span>镇(县)名</span><input type="text"/>
            <span>村名</span><input type="text"/>
            <a href="">查找</a>
            <a href="">添加村镇</a>
        </h5>
        <div class="contentlist">
            <ul class="contentlisttt czlb">
                <li>镇（县）名</li>
                <li>包含村</li>
                <li>负责人</li>
                <li>电话</li>
                <li>操作</li>
            </ul>
            <!-- 循环五服务乡镇列表信息 -->
            <c:forEach var="service_village_county_info" items="${service_village_county_info_list}">
            <ul class="czlb">
                <li>${service_village_county_info.get_service_village_county_name()}</li>
                <li>
                    <select>
                        <c:forEach var="service_village_info" items="${service_village_info_list}">
                             <c:choose>
                             <c:when test="${service_village_county_info.get_service_village_county_id()==service_village_info.get_service_village_county_id()}">
                                  <option>${service_village_info.get_service_village_name()}</option>
                             </c:when>
                             </c:choose>
                        </c:forEach>
                    </select>
                </li>
                <li>${service_village_county_info.get_service_village_county_leader()}</li>
                <li>${service_village_county_info.get_service_village_county_leaderphone()}</li>
                <li>
                    <!--
                    <select>
                        <option>修改</option>
                        <option>删除</option>
                        <option>查看</option>
                    </select>  
                    -->
                    <a href="village_modify.do?service_village_county_id=${service_village_county_info.get_service_village_county_id()}">
                       修改
                    </a>
                    <a href="village_del.do?service_village_county_id=${service_village_county_info.get_service_village_county_id()}">
                      删除
                    </a>
                    <a href="village_detail.do?service_village_county_id=${service_village_county_info.get_service_village_county_id()}">
                      详情
                    </a>
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