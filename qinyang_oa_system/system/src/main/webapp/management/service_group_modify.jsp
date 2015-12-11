<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="service_group_page" value="${param.service_group_page}"/>
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
    <div class="left_menu tzlb" style="height: 335px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li><a href="department_check.do?department_page=1" >部门管理</a>
            </li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1" class="active">五服务小组管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_group_add.jsp" >添加小组成员</a><i></i></dd>
                    <dd><a href="" class="red" style="border-bottom: 1px solid #c9c9c9;height: 35px">修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="service_group_modify_commit.do">管理</a>&gt;<a href="">五服务小组管理</a>&gt;<span>修改</span></h4>
        <div class="tztj bmtjxg">
            <form  action="service_group_modify_commit.do" method="post">
                <input type="hidden" name="service_group_id" value="${service_group_info.get_service_group_id()}">
                <input type="hidden" name="service_group_page" value="${service_group_page}">
                <p><span>镇(县)名</span><input name="service_village_county_name" class="input600" type="text" value="${service_group_info.get_service_village_county_name()}"/></p>
                <p><span>村名</span><input type="text" name="service_village_name" value="${service_group_info.get_service_village_name()}"/></p>
                <p><span>服务类型</span>
                    <select name="service_type" style="height: 27px">
                        <option>法政法规服务</option>
                        <option>经济发展服务</option>
                        <option>和谐稳定服务</option>
                        <option>环境卫生服务</option>
                        <option>文体活动服务</option>
                    </select>
                </p>
                <p><span>责任人</span><input type="text" name="service_group_leader" value="${service_group_info.get_service_group_leader()}"/></p>
                <p><span>联系电话</span><input type="text"  name="service_group_phone" value="${service_group_info.get_service_group_phone()}"/></p>
                <p style="margin-bottom: 10px"><span>小组职责</span><textarea name="service_group_duty"> ${service_group_info.get_service_group_duty()}</textarea></p>
                <p><span>小组成员</span><textarea  name="service_group_member">${service_group_info.get_service_group_member()}</textarea></p>
                <p class="tztj_btn"><b class="login-error"></b><button style="margin: 0 -30px 0 0">确定修改</button></p>
            </form>
        </div>
        <br/>
    </div>

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>