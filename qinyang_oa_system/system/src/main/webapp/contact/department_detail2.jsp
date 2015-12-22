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
                    <li><a href=""><span>888</span>条工作提醒</a></li>
                    <li><a href=""><span>2</span>条服务提醒</a></li>
                    <li ><a href=""><span>3</span>条待审核记录</a></li>
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
        <li><a href="" class="active">四联</a></li>
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
    <h4 style="font-weight: normal"><a href="">四联</a>&gt;<span>联系人详情</span></h4>
    <div class="slxq" style="margin-top: 20px">
        <h5 style="font-weight: normal">市委常委</h5>
        <div>
            <div class="contacts">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>市委常委</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            <div class="contacts bordernone">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>市委常委</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述</span></p>
            </div>
            <i></i>
        </div>
    </div>
    <div class="slxq">
        <h5 class="bulec" style="font-weight: normal">市政府</h5>
        <div>
            <div class="contacts">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>乡镇办党（工）委</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            <div class="contacts bordernone">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>乡镇办党（工）委</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
        </div>
    </div>
    

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    $(".contacts").mousemove(function(){
        $(this).children().css({color:"#00a0e9"}).find("li").css({color:"#00a0e9"});
        return false;
    }).mouseout(function(){
        $(this).children().css({color:"#999"}).find("li").css({color:"#666"});
    })
</script>
</body>
</html>