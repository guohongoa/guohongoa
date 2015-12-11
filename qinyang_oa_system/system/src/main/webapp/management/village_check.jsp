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
     <c:set var="village_total_page" value="${param.village_total_page}"/>
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
                    <dd><a href="../error.jsp" >修改</a></dd>
                </dl>
            </li>
            <li><a href="department_check.do?department_page=1">部门管理</a></li>
            <li><a href="employee_check.do?employee_page=1"  >人员管理</a>
            </li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a> &gt;<span>村镇管理</span></h4>
        <h5><span>镇(县)名</span><input type="text"/>
            <span class="marginl">村名</span><input type="text"/>
            <a href="../error.jsp">查找</a>
            <a href="../error.jsp">添加村镇</a>
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
                     <a href="village_modify.do?service_village_county_id=${service_village_county_info.get_service_village_county_id()}&village_page=${village_page}">
                       修改
                    </a>
                    <a href="village_del.do?service_village_county_id=${service_village_county_info.get_service_village_county_id()}&village_page=${village_page}">
                      删除
                    </a>
                    <a href="village_detail.do?service_village_county_id=${service_village_county_info.get_service_village_county_id()}&village_page=${village_page}">
                      详情
                    </a>
                </li>
            </ul>
            </c:forEach>
        </div>
    </div>
   <c:choose>
      <c:when test="${village_page==1}">
      <div class="page">
        <a href="check_service_village_detail.do?village_page=1">上一页</a>
        <a href="check_service_village_detail.do?village_page=1" class="bulec">1</a>
        <a href="check_service_village_detail.do?village_page=2">2</a>
        <a href="check_service_village_detail.do?village_page=3">3</a>
        <a href="check_service_village_detail.do?village_page=4">4</a>
        <a href="check_service_village_detail.do?village_page=5">5</a>
        <a href="check_service_village_detail.do?village_page=2">下一页</a>
        <a>共${village_total_page}页</a>
        <form method="get" action="check_service_village_detail.do">
        <a>
           到&nbsp;<input type="text" name="village_page" style="width:15px;">&nbsp;页
             <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:when test="${village_page==2}">
      <div class="page">
        <a href="check_service_village_detail.do?village_page=1">上一页</a>
        <a href="check_service_village_detail.do?village_page=1">1</a>
        <a href="check_service_village_detail.do?village_page=2" class="bulec">2</a>
        <a href="check_service_village_detail.do?village_page=3">3</a>
        <a href="check_service_village_detail.do?village_page=4">4</a>
        <a href="check_service_village_detail.do?village_page=5">5</a>
        <a href="check_service_village_detail.do?village_page=3">下一页</a>
        <a>共${village_total_page}页</a>
        <form method="get" action="check_service_village_detail.do">
        <a>
           到&nbsp;<input type="text" name="village_page" style="width:15px;">&nbsp;页
            <input type="submit" name="submit" value="确定">
        </a>
        </form>
      </div>
      </c:when>
      <c:otherwise>
      <div class="page">
        <a href="check_service_village_detail.do?village_page=${village_page-1}">上一页</a>
        <a href="check_service_village_detail.do?village_page=${village_page-2}">${village_page-2}</a>
        <a href="check_service_village_detail.do?village_page=${village_page-1}">${village_page-1}</a>
        <a class="bulec" href="check_service_village_detail.do?village_page=${village_page}">${village_page}</a>
        <a href="check_service_village_detail.do?village_page=${village_page+1}">${village_page+1}</a>
        <a href="check_service_village_detail.do?village_page=${village_page+2}">${village_page+2}</a>
        <a href="check_service_village_detail.do?village_page=${village_page+1}">下一页</a>
        <a>共${village_total_page}页</a>
        <form method="get" action="check_service_village_detail.do">
        <a>
           到&nbsp;<input type="text" name="village_page" style="width:15px;">&nbsp;页
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