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
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/">四联</a></li>
        <li><a href="../service/">五服务</a></li>
        <li><a href="../work">工作</a></li>
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
            <li><a href="village_check_request.jsp" class="active">村镇管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="#" class="red">添加村镇</a><i></i></dd>
                </dl>
            </li>
            <li><a href="department_check_request.jsp" >部门管理</a></li>
            <li><a href="employee_check_request.jsp">人员管理</a></li>
            <li><a href="service_group_check_request.jsp">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<a href="">村镇管理</a>&gt;<span>添加村镇</span></h4>
        <div class="tztj">
            <form id="post_city" action="village_add.do" method="post">
                <div class="checkradio"><input class="shoudong" type="radio" name="cun">手动添加村</div>
                <div class="shuru">
                    <p><span>镇(县)名</span><input class="input600" type="text" name="service_village_county_name"/></p>
                    <p><span>负责人</span><input type="text" name="service_village_county_leader"/></p>
                    <p><span>电话</span><input type="text" name="service_village_county_leaderphone"/></p>
                    <p><span>包含村</span><textarea class="srvul" name="str_service_village_names" form="post_city"></textarea></p>
                </div>
                <h6>村与村之间请以一个‘空格’隔开</h6>
                <div class="checkradio"><input class="piliang" type="radio" name="cun">批量导入村</div>
                <ul class="batch">
                    <li style="border-right: 1px solid #c9c9c9"><a href="/DownLoad/1.rar">样例下载</a><span>请参照样例的格式<br>编辑上传内容</span></li>
                    <li><a  style="position: relative">
                        <input  class="filew" type="file" style="position: absolute;top:30px;opacity: 0;"/>
                        添加附件</a>
                        <span>附件的格式请与<br>表单的格式一致</span>
                    </li>
                  
                </ul>
                <div class="clear"></div>
                <p class="tztj_btn"><b class="login-error"></b><button>提交</button></p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>

    //手动添加与批量导入的选择
    $(".shoudong").click(function(){
            $(".shuru").css({background:"#fff"});
            $(".shuru input").removeAttr("disabled");
            $(".srvul").removeAttr("disabled").val("村与村之间请以一个‘空格’隔开");
            $(".batch").css({background:"#eee"}).children().children().find("input").attr("disabled","disabled");


    })
    $(".srvul").focus(function(){
        $(this).val("")
    })
        $(".piliang").click(function(){
          $(".shuru").css({background:"#eee"}).children().children().attr("disabled","disabled");
          $(".batch").css({background:"#fff"}).children().children().find("input").removeAttr("disabled");
        })
</script>
</body>
</html>