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
<div class="header">
    <!--头部header区域-->
    <div class="h_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li><a href="../index.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href="../sz/sz.html"><i class="icon_s icon"></i>设置</a></li>
                <li><a href="../xx/xx.html"><i class="icon_m icon"></i>消息</a></li>
                <li><a href="../kh/kh.html"><i class="icon_k icon"></i>考核</a></li>
                <li><a href="../tz/tz.html"><i class="icon_t icon"></i>台账</a></li>
                <li><a href="../gz/gz.html"><i class="icon_g icon"></i>工作</a></li>
                <li><a href="../wfw/fza.html"><i></i>五服务</a></li>
                <li><a href="../sl/sl.html"><i class="icon_l icon"></i>四联</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <!--左侧导航-->
    <div class="left_menu xiangmu">
        <h3>管理</h3>
        <ul>
            <li><a class='active' href="">项目管理</a>
                <dl>
                    <dt></dt>
                    <dd><a href="project_total_check_request.jsp">审批项目</a></dd>
                    <dd><a href="project_approved_check_request.jsp" >已审批</a></dd>
                    <dd><a href="project_waiting_check_request.jsp">待审批</a></dd>
                    <dd><a href="project_refused_check_request.jsp" class="activecolor">未通过</a></dd>
                    <dd><a href="project_add.jsp">添加项目</a><i></i></dd>
                </dl>
            </li>
            <li><a href="department_check_request.jsp"> 部门管理</a></li>
            <li><a href="employee_check_request.jsp">人员管理</a></li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="xmgl">
            <h3><a href="" class="gray">管理</a> &gt;<a href="" class="gray">项目管理</a>&gt;<a href="" class="gray">未通过</a></h3>
            <div class="tjglcontent">
                <ul class="tjglcontentt">
                    <li>项目编号</li>
                    <li>项目名称</li>
                    <li style="line-height: 23px">提交人/<br/>审批人</li>
                    <li>负责人</li>
                    <li>负责部门</li>
                    <li>发送时间</li>
                    <li>状态</li>
                    <li>内容</li>
                </ul>
                <c:forEach var="project_info" items="${project_info_list}">
                <ul class="tjglcontentc">
                    <li>${project_info.get_project_code()}</li>
                    <li>${project_info.get_project_name()}</li>
                    <li>${project_info.get_project_commiter()}/${project_info.get_project_approver()}</li>
                    <li>${project_info.get_project_leader()}</li>
                    <li>${project_info.get_project_department()}</li>
                    <li>${project_info.get_project_addtime()}</li>
                    <li>${project_info.get_project_status()}</li>
                    <li><a href="" class="bulec">详细</a></li>
                </ul>
                </c:forEach>
            </div>
        </div>
        <div class="page">
            <a  href="" class="bulec">1</a>
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
    <script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
    <script src=""></script>
</body>
</html>