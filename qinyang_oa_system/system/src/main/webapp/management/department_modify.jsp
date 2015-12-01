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
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
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
            <li><a href="village_check_request.jsp">村镇管理</a></li>
            <li><a href="department_check_request.jsp" class="active">部门管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="employee_add.jsp">添加部门</a><i></i></dd>
                </dl>
            </li>
            <li><a href="employee_check_request.jsp">人员管理</a></li>
            <li><a href="service_group_check_request.jsp">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<a href="">部门管理</a>&gt;<span>修改信息</span></h4>
        <div class="bmtj ">
            <form action="department_modify_commit.do" method="post">
                <input type="hidden" name="department_id" value="${department_info.get_department_id()}">
                <div>
                    <p><span>部门编号</span>
                        <input class="input200" type="text" name="department_code" value="${department_info.get_department_code()}"/></p>

                    <p><span>部门名称</span>
                        <input class="input200" type="text" name="department_name" value="${department_info.get_department_name()}"/></p>
                </div>
                <div class="shangchuan">
                    <p><span>工作制度</span>
                        <textarea name="department_regulation">${department_info.get_department_regulation()}</textarea></p>

                    <p><span>上传流程</span>
                        <input type="file" value=""/>
                    </p>
                </div>
                <div class="clear">
                    <p><span>部门负责人</span>
                        <input class="input200" type="text" name="department_leader" value="${department_info.get_department_leader()}"/></p>

                    <p><span>上级部门</span>
                        <input class="input200" type="text" name="department_parent" value="${department_info.get_department_parent()}"/></p>
                </div>
                <div>
                    <p><span>上级联系人</span>
                        <input class="input200" type="text" name="department_parentleader" value="${department_info.get_department_parent()}"/></p>

                    <p><span>联系电话</span>
                        <input class="input200" type="text"  name="department_leaderphone" value="${department_info.get_department_leaderphone()}"/></p>
                </div>
                <div class="clear tianjiabtn">
                    <input type="submit" name="submit" value="添加"/><input type="reset" value="重置"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>