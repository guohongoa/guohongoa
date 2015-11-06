<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>条带审核记录</a></li>
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
    <div class="left_menu tzlb" style="height: 175px">
        <h3><a href="">五服务</a></h3>
        <ul>
            <li><a href="" class="active">法政法规服务</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="" class="red">发起服务</a><i></i></dd>
                    <dd><a href="" >我的服务</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a>&gt;<a href="">五服务</a>&gt;<span>法政法规服务</span></h4>
        <div class="tztj">
            <form id="post_tz" action="" method="post">
                <p><span>汇报给</span><input class="input600" type="text"/></p>
                <p><span>服务主题</span><input type="text"/></p>
                <p><span>服务类型</span><input type="text" value="法政法规服务" disabled="disabled"/></p>
                <p><span>责任人</span><input type="text" value="我" disabled="disabled"/></p>
                <p><span>联系电话</span><input type="text" value="我的电话" disabled="disabled"/></p>
                <p><span>服务目标</span><input type="text"/></p>
                <p><span>服务周期</span><input class="input100 timedata" type="text"/>-<input class="input100 timedata" type="text"/></p>
                <p><span>服务内容</span><textarea></textarea></p>
                <p class="tztj_btn"><b class="login-error"></b><button>提交</button></p>
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
                $("#post_tz").submit();
            }
        });
    </script>
</body>
</html>