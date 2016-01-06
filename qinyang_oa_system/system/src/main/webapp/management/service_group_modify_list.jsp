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
     <c:set var="service_group_total_page" value="${param.service_group_total_page}"/>
</head>
<body>
<c:choose>
        <c:when test="${not empty user_admin}">
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
    <div class="left_menu tzlb" style="height: 330px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li><a href="department_check.do?department_page=1" >部门管理</a>
            </li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1" class="active">五服务小组管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_group_add_display.do">添加小组成员</a><i></i></dd>
                    <dd><a href="service_group_modify_list.do?service_group_page=1" style="border-bottom: 1px solid #c9c9c9;height: 35px" class="red" >修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<span>五服务小组管理</span></h4>
        <h6><span>村名</span><input type="text"/>
            <span class="marginl">服务小组名</span>
                <select>
                    <option>法政法规服务</option>
                    <option>经济发展服务</option>
                    <option>和谐稳定服务</option>
                    <option>环境卫生服务</option>
                    <option>文体活动服务</option>
                </select>
            <span class="marginl">姓名</span><input type="text"/>
            <a href="../error.jsp" class="marginl">查找</a>
            <a href="service_group_add_display.do" class="marginl">添加成员</a>
        </h6>
        <div class="contentlist">
            <ul class="contentlisttt ">
                <li>镇（县）名</li>
                <li>村名</li>
                <li>服务小组类型</li>
                <li>负责人</li>
                <li class="width_lg">小组成员</li>
                <li>操作</li>
            </ul>
           <c:forEach var="service_group_info" items="${service_group_info_list}">
            <ul>
                <li>${service_group_info.get_service_village_county_name()}</li>
                <li>${service_group_info.get_service_village_name()}</li>
                <c:choose>
                      <c:when test="${service_group_info.get_service_type()==0}">
                           <li>法政法规服务</li>
                       </c:when>
                       <c:when test="${service_group_info.get_service_type()==1}">
                           <li>经济发展服务</li>
                       </c:when>
                       <c:when test="${service_group_info.get_service_type()==2}">
                           <li>和谐稳定服务</li>
                       </c:when>
                       <c:when test="${service_group_info.get_service_type()==3}">
                           <li>环境卫生服务</li>
                       </c:when>
                        <c:when test="${service_group_info.get_service_type()==4}">
                           <li>文体活动服务</li>
                       </c:when>
                    </c:choose>
                
                
                
                <li>${service_group_info.get_service_group_leader()}</li>
                <li class="width_lg">${service_group_info.get_service_group_member()}</li>
                <li>
                    <a href="service_group_modify.do?service_group_id=${service_group_info.get_service_group_id()}&service_group_page=${service_group_page}">
                         修改
                    </a>
                </li>
            </ul>
            </c:forEach>
        </div>
         
    </div>
    <c:choose>
      <c:when test="${service_group_page==1}">
      <div class="page">
        <a href="service_group_modify_list.do?service_group_page=1">上一页</a>
        <a href="service_group_modify_list.do?service_group_page=1" class="bulec">1</a>
        <a href="service_group_modify_list.do?service_group_page=2">2</a>
        <a href="service_group_modify_list.do?service_group_page=3">3</a>
        <a href="service_group_modify_list.do?service_group_page=4">4</a>
        <a href="service_group_modify_list.do?service_group_page=5">5</a>
        <a href="service_group_modify_list.do?service_group_page=2">下一页</a>
        <a>共${service_group_total_page}页</a>
        <form method="get" action="service_group_modify_list.do">
        <a>
           到&nbsp;<input type="text" name="service_group_page" style="width:15px;">&nbsp;页
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${service_group_page==2}">
      <div class="page">
        <a href="service_group_modify_list.do?service_group_page=1">上一页</a>
        <a href="service_group_modify_list.do?service_group_page=1">1</a>
        <a href="service_group_modify_list.do?service_group_page=2" class="bulec">2</a>
        <a href="service_group_modify_list.do?service_group_page=3">3</a>
        <a href="service_group_modify_list.do?service_group_page=4">4</a>
        <a href="service_group_modify_list.do?service_group_page=5">5</a>
        <a href="service_group_modify_list.do?service_group_page=3">下一页</a>
        <a>共${service_group_total_page}页</a>
        <form method="get" action="service_group_modify_list.do">
        <a>
           到&nbsp;<input type="text" name="service_group_page" style="width:15px;">&nbsp;页
            <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="service_group_modify_list.do?service_group_page=${service_group_page-1}">上一页</a>
        <a href="service_group_modify_list.do?service_group_page=${service_group_page-2}">${service_group_page-2}</a>
        <a href="service_group_modify_list.do?service_group_page=${service_group_page-1}">${service_group_page-1}</a>
        <a class="bulec" href="service_group_modify_list.do?service_group_page=${service_group_page}">${service_group_page}</a>
        <a href="service_group_modify_list.do?service_group_page=${service_group_page+1}">${service_group_page+1}</a>
        <a href="sservice_group_modify_list.do?service_group_page=${service_group_page+2}">${service_group_page+2}</a>
        <a href="service_group_modify_list.do?service_group_page=${service_group_page+1}">下一页</a>
        <a>共${service_group_total_page}页</a>
        <form method="get" action="service_group_modify_list.do">
        <a>
           到&nbsp;<input type="text" name="service_group_page" style="width:15px;">&nbsp;页
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:otherwise>
    </c:choose>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</c:when>
</c:choose>
</body>
</html>