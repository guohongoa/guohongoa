<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
     <c:set var="department_id" value="${param.department_id}"/>
     <c:set var="department_page" value="${param.department_page}"/>
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
    <h4><a href="">管理</a>&gt;<span>部门详情</span></h4>
    <div class="border">
        <div class="wdtzxq" id="bmglh">
            <p><b>部门编号：</b><span>${department_info.get_department_code()}</span></p>
            <p><b>部门名称：</b><span>${department_info.get_department_name()}</span></p>

            <p><b>工作制度：</b>
                <span>${department_info.get_department_regulation()}</span>
            </p>
            <p><b>部门负责人：</b><span>${department_info.get_department_leader()}</span></p>
            <p><b>上级部门：</b><span>${department_info.get_department_parent()}</span></p>
            <p><b>上级联系人：</b><span>${department_info.get_department_parentleader()}</span></p>
            <p><b>联系电话：</b><span>${department_info.get_department_leaderphone()}</span></p>
            <p><b>工作流程：</b>
                <span>
                    <img id="smjpg" src="http://101.200.196.121:8080/oa/css/images/liuchengshili.png" alt=""/>

                </span>
                <div id="bigjpg">

                    <img  src="http://101.200.196.121:8080/oa/css/images/bigshili.jpg" alt=""/>

                </div>

            </p>
        </div>
    </div>
    <div class="wdtzxq_btn">
        <a href="department_modify.do?department_id=${department_id}&department_page=${department_page}">修改</a> &nbsp; <a href="department_check.do?department_page=${department_page}">返回</a>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js">
</script>
<script>
    /*
    $(function(){
        $("#smjpg").click(function(){
            alert($("#bmglh").height())
            })
    })
    var h=document.getElementById("bmglh");
    var hh
    h.onload=function(){
         hh=this.offsetHeight
    }
    console.log(hh)
    var m=document.getElementById("smjpg");
    var mh= m.height;
    console.log(mh)
    */
  $("#smjpg").click(function(){
    $("#bigjpg").show()
   })
   $("#bigjpg").click(function(){
       $(this).hide();
  })
</script>
</body>
</html>