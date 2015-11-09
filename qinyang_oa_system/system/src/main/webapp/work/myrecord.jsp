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
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>条带审核记录</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="" class="bordernone">首页</a></li>
        <li><a href="">四联</a></li>
        <li><a href="">五服务</a></li>
        <li><a href="" class="active">工作</a></li>
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
            <li><a href="" class="active">全部台帐</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="#">添加台帐</a><i></i></dd>
                    <dd><a href="">修改台帐</a></dd>
                    <dd><a href="" class="red">我的台帐</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a>&gt;<a href="">台帐</a>&gt;<span>我的台帐</span>
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
                   <form name='check_record_detail_form' action='check_record_detail.do' method='post'>
                     <input type='hidden' name='work_record_id' value='${work_record_info.get_work_record_id()}'/> 
                     <a href='javascript:document.check_record_detail_form.submit();'>查看</a>
                   </form>
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