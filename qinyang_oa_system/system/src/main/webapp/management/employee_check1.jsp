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
            <li><a href="rygl.html">人员管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="" class="activecolor">添加人员</a><i></i></dd>
                    <dd><a href="">修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="xmgl">
            <h3><a href="" class="gray">管理</a> &gt;<a href="" class="gray">人员管理</a></h3>
            <div class="xmgltj">
                <form action="">
                    <span>员工编号&nbsp;<input type="text"></span>
                    <span>员工姓名&nbsp;<input type="text"></span>
                    <input class="bulec inputnone" type="button" value="查找"/>
                    <input class="bulec inputnone" type="button" value="添加员工"/>
                </form>
            </div>
            <div class="tjglcontent">
                <ul class="tjglcontentt">
                    <li>员工编号</li>
                    <li>员工姓名</li>
                    <li>职务</li>
                    <li>所属部门</li>
                    <li>部门负责人</li>
                    <li>入职日期</li>
                    <li>联系电话</li>
                    <li>操作</li>
                </ul>
                <ul class="tjglcontentc">
                    <li>1</li>
                    <li>王某</li>
                    <li>党员干部</li>
                    <li>某部门</li>
                    <li>刘某</li>
                    <li>2015.10.10</li>
                    <li>13800000000</li>
                    <li>
                        &nbsp;<select>
                            <option>请选择</option>
                            <option>查看</option>
                            <option>修改</option>
                        </select>
                    </li>
                </ul>
                <ul class="tjglcontentc">
                    <li>1</li>
                    <li>王某</li>
                    <li>党员干部</li>
                    <li>某部门</li>
                    <li>刘某</li>
                    <li>2015.10.10</li>
                    <li>13800000000</li>
                    <li>
                        &nbsp;<select>
                        <option>请选择</option>
                        <option>查看</option>
                        <option>修改</option>
                    </select>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page">
            <a  href="" class="bulec">1</a>
            <a href="">2</a>
            <a href="">3</a>
            <a href="">4</a>
            <a href="">5</a>
            <a href="">6</a>
            <a href="">上一页</a>
            <a href="">下一页</a>
        </div>
    </div>
    <script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
    <script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
    <script src=""></script>
</body>
</html>