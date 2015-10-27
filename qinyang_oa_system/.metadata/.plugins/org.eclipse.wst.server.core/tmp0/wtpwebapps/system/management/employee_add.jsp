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
            </li>
            <li><a href="bmgl.html"> 部门管理</a>
            </li>
            <li><a href="rygltj.html">人员管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="#" class="activecolor">添加人员</a><i></i></dd>
                    <dd><a href="">修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="xmgl">
            <h3><a href="" class="gray">管理</a> &gt;<a href="" class="gray">人员管理</a> &gt;添加人员</h3>
            <div class="bmtj ">
                <form action="../employee_insert.do" method="post">
                    <div>
                        <p ><span>员工编号</span>
                            <input class="btn200" type="text" name="employee_code"/></p>
                        <p><span>员工姓名</span>
                            <input class="btn200" type="text" name="employee_name"/></p>
                    </div>
                    <div class="clear">
                        <p><span>出生日期</span>
                            <input class="btn200 timedata" type="text" name="employee_birthdate"/></p>
                        <p><span>员工性别</span>
                            <input  type="radio" name="employee_gender"  value=“0”/>男
                            <input  type="radio" name="employee_gender"  value=“1”/>女
                        </p>
                    </div>
                    <div class="clear">
                        <p><span>身份证号</span>
                            <input class="btn200" type="text"  name="employee_idcode"/></p>
                        <p><span>职&nbsp;&nbsp;务</span>
                            <input class="btn200" type="text" name="employee_position"/></p>
                    </div>
                    <div>
                        <p><span>所属部门</span>
                            <input class="btn200" type="text" name="employee_department"/></p>
                        <p><span>部门负责人</span>
                            <input class="btn200" type="text" name="employee_leader"/></p>
                    </div>
                    <div>
                        <p><span>入职日期</span>
                            <input class="btn200 timedata" type="text" name="employee_addworktime"/></p>
                        <p><span>联系电话</span>
                            <input class="btn200" type="text"  name="employee_phone"/></p>
                    </div>
                    <div>
                        <p><span>家庭住址</span>
                            <input class="btn200" type="text" name="employee_address"/></p>
                        <p><span>邮&nbsp;&nbsp;箱</span>
                            <input class="btn200" type="text" name="employee_email"/></p>
                    </div>
                    <div class="clear tianjiabtn">
                        <input type="submit" value="添加"/><input type="reset" value="重置"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
    <script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
    <script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</body>
</html>