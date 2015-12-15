<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa//css/all.css"/>
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
    <div class="left_menu" style="height: 290px">
        <h3><a href="">工作任务</a></h3>
        <ul>
            <li><a href="" class="active">安排工作</a></li>
            <li><a href="">汇报工作</a></li>
            <li><a href="">反馈工作</a></li>
            <li><a href="">待审批</a></li>
            <li><a href="">全部工作</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a> &gt;<a href="">工作任务</a> &gt;<span>安排工作</span></h4>
        <div class="tztj">
            <form id="post_gzap" action="" method="post">
                <p><span>责任人</span><input class="input600" type="text"/></p>
                <p><span>工作主题</span><input type="text"/></p>
                <p><span>达成目标</span><input type="text"/></p>
                <p><span>执行周期</span><input class="input100 timedata" type="text"/>&nbsp; ——&nbsp; <input class="input100 timedata" type="text"/></p>
                <p><span>上传附件</span><input  style="border: none;margin: 10px 0 20px 0" type="file"/></p>
                <p><span>内容描述</span><textarea style="height: 260px;"></textarea></p>
                <p class="tztj_btn" ><b class="login-error"></b><a href="gzap.html" style="font-size: 14px">重置</a><a style="margin: 0 -30px 0 20px;font-size: 14px">提交</a></p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    //提交不为空的验证
    $(".tztj_btn button").click(function(){
        if(!$("input").val() || !$("textarea").val()){
            $(".login-error").html("提交不成功：信息填写不完整");
            return false
        }else{
            $("#post_gzap").submit();
        }
    });
</script>
</body>
</html>