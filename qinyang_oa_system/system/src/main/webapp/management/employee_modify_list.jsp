<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
     <c:set var="employee_page" value="${param.employee_page}"/>
     <c:set var="employee_total_page" value="${param.employee_total_page}"/>
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
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li><a href="department_check.do?department_page=1">部门管理</a></li>
            <li style="margin-bottom: -7px"><a href="employee_check.do?employee_page=1"  class="active">人员管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="employee_add_check.do">添加人员</a><i></i></dd>
                    <dd><a href="＃" class="red">修改</a></dd>
                </dl>
            </li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<span>员工管理</span></h4>
        <h5><span>员工姓名</span><input type="text"/>
            <span class="marginl">员工电话</span><input type="text"/>
            <a href="../error.jsp">查找</a>
            <a href="employee_add_check.do">添加员工</a>
        </h5>
        <div class="contentlist">
            <ul class="contentlisttt ">
                <li>姓名</li>
                <li>性别</li>
                <li>职务</li>
                <li>所属部门</li>
                <li>直接上级</li>
                <li>联系电话</li>
                <li>操作</li>
            </ul>
           <c:forEach var="employee_info" items="${employee_info_list}">
            <ul>
                <li>${employee_info.get_employee_name()}</li>
                <li>${employee_info.get_employee_str_gender()}</li>
                <li>${employee_info.get_employee_position()}</li>
                <li>${employee_info.get_employee_department_name()}</li>
                <li>${employee_info.get_employee_leader_name()}</li>
                <li>${employee_info.get_employee_phone()}</li>
                <li>
                   <a href="employee_modify.do?employee_id=${employee_info.get_employee_id()}&employee_page=${employee_page}">
                         修改
                   </a>
                </li>
            </ul>
            </c:forEach>
        </div>
    </div>
    <c:choose>
      <c:when test="${employee_page==1}">
      <div class="page">
        <a href="employee_check.do?employee_page=1">上一页</a>
        <a href="employee_check.do?employee_page=1" class="bulec">1</a>
        <a href="employee_check.do?employee_page=2">2</a>
        <a href="employee_check.do?employee_page=3">3</a>
        <a href="employee_check.do?employee_page=4">4</a>
        <a href="employee_check.do?employee_page=5">5</a>
        <a href="employee_check.do?employee_page=2">下一页</a>
        <a>共${employee_total_page}页</a>
        <form method="get" action="employee_check.do">
        <a>
           到&nbsp;<input type="text" name="employee_page" style="width:15px;">&nbsp;页
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${employee_page==2}">
      <div class="page">
        <a href="employee_check.do?employee_page=1">上一页</a>
        <a href="employee_check.do?employee_page=1">1</a>
        <a href="employee_check.do?employee_page=2" class="bulec">2</a>
        <a href="employee_check.do?employee_page=3">3</a>
        <a href="employee_check.do?employee_page=4">4</a>
        <a href="employee_check.do?employee_page=5">5</a>
        <a href="employee_check.do?employee_page=3">下一页</a>
        <a>共${employee_total_page}页</a>
        <form method="get" action="employee_check.do">
        <a>
           到&nbsp;<input type="text" name="employee_page" style="width:15px;">&nbsp;页
            <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="employee_check.do?employee_page=${employee_page-1}">上一页</a>
        <a href="employee_check.do?employee_page=${employee_page-2}">${employee_page-2}</a>
        <a href="employee_check.do?employee_page=${employee_page-1}">${employee_page-1}</a>
        <a class="bulec" href="employee_check.do?employee_page=${employee_page}">${employee_page}</a>
        <a href="employee_check.do?employee_page=${employee_page+1}">${employee_page+1}</a>
        <a href="employee_check.do?employee_page=${employee_page+2}">${employee_page+2}</a>
        <a href="employee_check.do?employee_page=${employee_page+1}">下一页</a>
        <a>共${employee_total_page}页</a>
        <form method="get" action="employee_check.do">
        <a>
           到&nbsp;<input type="text" name="employee_page" style="width:15px;">&nbsp;页
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