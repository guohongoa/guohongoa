<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    
     <c:set var="department_page" value="${param.department_page}"/>
     <c:set var="department_total_page" value="${param.department_total_page}"/>
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
    <div class="left_menu tzlb" style="height: 290px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li style="margin-bottom: -7px"><a href="department_check.do?department_page=1" class="active" >部门管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="department_add_display.do" >添加部门</a><i></i></dd>
                    <dd><a href="" class="red">修改</a></dd>
                </dl>
            </li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a> &gt;<span>部门管理</span></h4>
        <h5><span>部门编号</span><input type="text"/>
            <span class="marginl">部门名称</span><input type="text"/>
            <a href="../error.jsp">查找</a>
            <a href="department_add.jsp">添加部门</a>
        </h5>
        <div class="contentlist">
            <ul class="contentlisttt tzlb_content">
                <li>部门编号</li>
                <li>部门名称</li>
                <li>负责人</li>
                <li>工作制度</li>
                <li>上级部门</li>
                <li>上级联系人</li>
                <li>联系电话</li>
                <li>操作</li>
            </ul>
            <c:forEach var="department_info" items="${department_info_list}">
            <ul class="tzlb_content">
                <li>${department_info.get_department_code()}</li>
                <li>${department_info.get_department_name()}</li>
                <li>${department_info.get_department_leader()}</li>
                <li><a href="../error.jsp">详细</a></li>
                <li>${department_info.get_department_parent()}</li>
                <li>${department_info.get_department_parentleader()}</li>
                <li style="width:72px;">${department_info.get_department_leaderphone()}</li>
                <li style="width:85px;">
                   <a href="department_modify.do?department_id=${department_info.get_department_id()}&department_page=${department_page}">
                         修改
                    </a>
                </li>
            </ul>
            </c:forEach>
        </div>
    </div>
     <c:choose>
      <c:when test="${department_page==1}">
      <div class="page">
        <a href="department_modify_list.do?department_page=1">上一页</a>
        <a href="department_modify_list.do?department_page=1" class="bulec">1</a>
        <a href="department_modify_list.do?department_page=2">2</a>
        <a href="department_modify_list.do?department_page=3">3</a>
        <a href="department_modify_list.do?department_page=4">4</a>
        <a href="ddepartment_modify_list.do?department_page=5">5</a>
        <a href="department_modify_list.do?department_page=2">下一页</a>
        <a>共${department_total_page}页</a>
        <form method="get" action="department_modify_list.do">
        <a>
           到&nbsp;<input type="text" name="department_page" style="width:15px;">&nbsp;页
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${department_page==2}">
      <div class="page">
        <a href="department_modify_list.do?department_page=1">上一页</a>
        <a href="department_modify_list.do?department_page=1">1</a>
        <a href="department_modify_list.do?department_page=2" class="bulec">2</a>
        <a href="department_modify_list.do?department_page=3">3</a>
        <a href="department_modify_list.do?department_page=4">4</a>
        <a href="department_modify_list.do?department_page=5">5</a>
        <a href="department_modify_list.do?department_page=3">下一页</a>
        <a>共${department_total_page}页</a>
        <form method="get" action="department_modify_list.do">
        <a>
           到&nbsp;<input type="text" name="department_page" style="width:15px;">&nbsp;页
            <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="department_modify_list.do?department_page=${department_page-1}">上一页</a>
        <a href="department_modify_list.do?department_page=${department_page-2}">${department_page-2}</a>
        <a href="department_modify_list.do?department_page=${department_page-1}">${department_page-1}</a>
        <a class="bulec" href="department_modify_list.do?department_page=${department_page}">${department_page}</a>
        <a href="department_modify_list.do?department_page=${department_page+1}">${department_page+1}</a>
        <a href="department_modify_list.do?department_page=${department_page+2}">${department_page+2}</a>
        <a href="department_modify_list.do?department_page=${department_page+1}">下一页</a>
        <a>共${department_total_page}页</a>
        <form method="get" action="department_modify_list.do">
        <a>
           到&nbsp;<input type="text" name="department_page" style="width:15px;">&nbsp;页
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