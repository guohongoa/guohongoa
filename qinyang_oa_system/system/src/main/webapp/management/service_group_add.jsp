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
                    <li class="bordernone"><a href="">你有<span>3</span>条待审核记录</a></li>
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
    <div class="left_menu tzlb" style="height: 325px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="">村镇管理</a></li>
            <li><a href="" class="active">部门管理</a>
            </li>
            <li><a href="">人员管理</a></li>
            <li><a href="">五服务小组管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="" class="red">添加小组成员</a><i></i></dd>
                    <dd><a href="" >修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<a href="">五服务小组管理</a>&gt;<span>添加小组成员</span></h4>
        <div class="tztj">
            <form  action="service_group_add.do" method="post" id="group_add_form">
                <p><span>镇(县)名</span><input class="input600" type="text" name="service_village_county_name"/></p>
                <!-- 镇县id--><input type="hidden" name="service_village_county_id" value="123"/>
                <p><span>村名</span><input type="text" name="service_village_name"/></p>
                <!-- 村id--><input type="hidden" name="service_village_id" value="456"/>
                <p><span>服务类型</span>
                    <select name="service_type">
                        <option value="0">法政法规服务</option>
                        <option value="1">经济发展服务</option>
                        <option value="2">和谐稳定服务</option>
                        <option value="3">环境卫生服务</option>
                        <option value="4">文体活动服务</option>
                    </select>
                </p>
                <p><span>责任人</span><input type="text" name="service_group_leader"/></p>
                <p><span>联系电话</span><input type="text" name="service_group_phone"/></p>
                <p><span>小组职责</span><textarea name="service_group_duty" form="group_add_form"></textarea></p>
                <p><span>小组成员</span><textarea name="service_group_member" form="group_add_form"></textarea></p>
                <p class="tztj_btn"><b class="login-error"></b><button>确定添加</button></p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>