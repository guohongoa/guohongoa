<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
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
        <li><a href="../work/" class="active">工作</a></li>
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
    <div class="left_menu tzlb" style="height: 215px">
        <h3><a href="">台账</a></h3>
        <ul>
            <li><a href="myrecord_request.jsp?record_page=1&flag=0" class="active">全部台账</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="#" class="red">添加台账</a><i></i></dd>
                    <dd><a href="../error.jsp"  >修改台账</a></dd>
                    <dd><a href="myrecord_request.jsp?record_page=1&flag=1" style="border-bottom: 1px solid #c9c9c9;height: 35px">我的台账</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">工作</a>&gt;<a href="">台账</a>&gt;<span>添加台账</span></h4>
        <!--需要提交给后台的数据-->
        <div class="tztj">
            <form id="post_tz" action="record_add.do" method="post">
                <p><span>建账人</span><input class="input600 grey9" type="text" name="work_record_creator" value="${user_name}" readonly="readonly"/></p>
                 <!--自动提交建帐人用户id--><input type="hidden" name="work_record_creatorid" value="${user_id}"/>
                <p><span>职务</span><input class="grey9" type="text" name="work_record_position" value="我的职务" readonly="readonly"/></p>
                <p><span>所属部门</span><input class="grey9" type="text" name="work_record_department" value="我所属的部门" readonly="readonly"/></p>
                <p><span>直接上级</span><input class="grey9" type="text" name="work_record_leader" value="我的上级" readonly="readonly"/></p>
                <p ><span style="line-height:15px;vertical-align: middle">党员联系<br>人姓名</span><input style="margin-bottom: 8px" type="text" name="work_record_communist"/></p>
                <p ><span>建账日期</span><input type="text" class="timedata" name="work_record_date"/></p>
                <p style="margin: 25px 0"><span >工作计划</span><textarea name="work_record_plan"></textarea></p>
                <p ><span>落实情况</span><textarea name="work_record_effect"></textarea></p>
                <p class="tztj_btn"><b class="login-error"></b>&nbsp;<button style="margin-right: -30px">提交</button></p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    //提交不为空的验证，后台无需操作
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