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
<div class="header">
    <!--头部header区域-->
    <div class="h_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li><a href="../index.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href="../sz/sz.html"><i class="icon_s icon"></i>设置</a></li>
                <li><a href="../xx/xx.html"><i class="icon_m icon"></i>消息</a></li>
                <li><a href="../kh/kh.html"><i class="icon_k icon"></i>考核</a></li>
                <li><a href="../tz/tz.html"><i class="icon_t icon"></i>台账</a></li>
                <li><a href="../gz/gz.html"><i class="icon_g icon"></i>工作</a></li>
                <li><a href="../wfw/fza.html"><i></i>五服务</a></li>
                <li><a href="../sl/sl.html"><i class="icon_l icon"></i>四联</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <!--左侧导航-->
    <div class="left_menu" style="height: 265px">
        <h3>管理</h3>
        <ul>
            <li><a class='active' href="">项目管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="#" class="activecolor">添加项目</a><i></i></dd>
                    <dd><a href="">已审批</a></dd>
                    <dd><a href="">待审批</a></dd>
                    <dd><a href="">未通过</a></dd>
                    <dd><a href="">审批项目</a></dd>
                </dl>
            </li>
            <li><a href="bmgl.html"> 部门管理</a></li>
            <li><a href="rygltj.html">人员管理</a></li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="xmgl">
            <h3><a href="" class="gray">管理</a> &gt;<a href="" class="gray">项目管理</a> &gt;添加项目</h3>
            <div class="bmtj ">
                <form action="../project_insert.do" method="post">
                    <div>
                        <p ><span>项目编号</span>
                        <input class="btn200" type="text" name="project_code"/></p>
                        <p><span>项目名称</span>
                        <input class="btn200" type="text" name="project_name"/></p>
                    </div>
                    <div class="shangchuan">
                        <p><span>项目内容</span>
                        <textarea name="project_content"></textarea></p>
                        <p><span>项目资源</span>
                        <input type="file"/></p>
                        <input type="hidden" type="text" name="project_resourceurl" value="url">
                    </div>
                    <div class="clear">
                        <p><span>项目部门</span>
                        <input class="btn200" type="text" name="project_department"/></p>
                        <p><span>项目负责人</span>
                        <input class="btn200" type="text" name="project_leader"/></p>
                    </div>
                    <div>
                        <p><span>项目开始时间</span>
                        <input class="btn200" type="text" name="project_begintime"/></p>
                        <p><span>项目结束时间</span>
                        <input class="btn200" type="text" name="project_endtime"/></p>
                    </div>
                    <div class="clear tianjiabtn">
                        <!-- 先将项目负责人电话隐藏，div写好后变为显示 -->
                        <input type="hidden" name="project_leaderphone" value="123">
                        <input type="hidden" name="project_status" value="0"/><!--项目状态，起始未完成为0 -->
                        <input type="hidden" name="project_commiter" value="username"/><!--提交者姓名-->
                        <input type="submit" value="添加"/><input type="reset" value="重置"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
    <script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
    <script src=""></script>
</body>
</html>