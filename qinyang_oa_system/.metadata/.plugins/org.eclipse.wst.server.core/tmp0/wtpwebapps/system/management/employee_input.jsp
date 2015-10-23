<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/index.css"/>
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
                <li><a href="../login.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href=""><i class="icon_s icon"></i>设置</a></li>
                <li><a href=""><i class="icon_m icon"></i>消息</a></li>
                <li><a href=""><i class="icon_g icon"></i>管理</a></li>
                <li><a href=""><i></i>五服务</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <!--左侧导航-->
    <div class="left_menu">
        <h3>管理</h3>
        <ul>
            <li><a class='active'>人员管理</a>
            </li>
            <li><a >部门管理</a>
            </li>
            <li><a >制度管理</a>
            </li>
            <li><a href="serviceone.html" >项目管理</a>
            </li>
        </ul>
    </div>

    <!--右侧主要内容-->
    <div class="main">
        <div class="task">
            <h3>管理&gt;人员管理&gt;添加人员</h3>

            <form id="taskgo" action="../employee_insert.do" method="post"  accept-charset="utf-8">
                <table>
                    <tr>
                        <td class="td1">员工编号</td>
                        <td class="td2"><div><input type="text" name="employee_code"/></div></td>
                    </tr>
                    <tr>
                        <td>出生日期</td>
                        <td class="td2"><div><input type="text" name="employee_birthdate"/></div></td>
                    </tr>
                    <tr>
                        <td>身份证号</td>
                        <td class="td2"><div><input type="text" name="employee_idcode"/></div></td>
                    </tr>
                     <tr>
                        <td>所属部门</td>
                        <td class="td2"><div><input type="text" name="employee_department"/></div></td>
                    </tr>
                    <tr>
                        <td>职务</td>
                        <td class="td2"><div><input type="text" name="employee_position"/></div></td>
                    </tr>
                    <tr>
                        <td>家庭住址</td>
                        <td class="td2"><div><input type="text" name="employee_address"/></div></td>
                    </tr>
                    <tr>
                        <td>员工姓名</td>
                        <td class="td2"><div><input type="text" name="employee_name"/></div></td>
                    </tr>
                     <tr>
                        <td>员工性别</td>
                        <td class="td2"><div><input type="text" name="employee_gender"/></div></td>
                    </tr>
                    <tr>
                        <td>入职日期</td>
                        <td class="td2"><div><input type="text" name="employee_addworktime"/></div></td>
                    </tr>
                    <tr>
                        <td>部门负责人</td>
                        <td class="td2"><div><input type="text" name="employee_leader"/></div></td>
                    </tr>
                    <tr>
                        <td>联系电话</td>
                        <td class="td2"><div><input type="text" name="employee_phone"/></div></td>
                    </tr>
                    <tr>
                        <td>邮箱</td>
                        <td class="td2"><div><input type="text" name="employee_email"/></div></td>
                    </tr>
                </table>
                <input id="tasks" type="submit" value="添加新制度"/>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/index.js"></script>
</body>
</html>