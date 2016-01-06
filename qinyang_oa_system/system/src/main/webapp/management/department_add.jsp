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
<c:choose>
        <c:when test="${not empty user_admin}">
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
    <div class="left_menu tzlb" style="height: 290px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li style="margin-bottom: -7px"><a href="department_check.do?department_page=1" class="active">部门管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="#" class="red">添加部门</a><i></i></dd>
                    <dd><a href="department_modify_list.do?department_page=1">修改</a></dd>
                </dl>
            </li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="department_check.do?department_page=1">管理</a> &gt;<a href="department_check.do?department_page=1">部门管理</a> &gt;<span>添加部门</span></h4>
            <div class="bmtj ">
                <form action="department_insert.do" method="post" id="department_insert_form">
                    <div>
                        <p><span>部门编号</span>
                            <input class="input200" type="text" name="department_code"/></p>

                        <p><span>部门名称</span>
                            <input  class="input200" type="text"  name="department_name"/>
                        </p>
                    </div>
                    <div class="shangchuan">
                        <p><span>工作制度</span>
                            <textarea name="department_regulation" form="department_insert_form" placeholder="输入不超过30个字"></textarea>
                        </p>
                        <p><span>所属架构</span>
                        <select name="department_group_id" form="department_insert_form">
                            <c:forEach var="department_group_info" items="${department_group_list}">
                                <option value ="${department_group_info.get_department_group_id()}">${department_group_info.get_department_group_name()}</option>
                            </c:forEach>
                         </select>
                    </p>
                    </div>
                    <div class="clear">
                        <p><span>部门负责人</span>
                            <input class="input200" type="text" name="department_leader"/></p>

                        <p><span>上级部门</span>
                            <input class="input200" type="text" name="department_parent"/></p>
                    </div>
                    <div>
                        <p><span>上级联系人</span>
                            <input class="input200" type="text" name="department_parentleader"/></p>

                        <p><span>联系电话</span>
                            <input class="input200" type="text" name="department_leaderphone"/></p>
                    </div>
                    <div class="clear tianjiabtn">
                        <b class="login-error" style="margin-right: 10px;color: #cc0000"></b><input type="submit" value="添加"/><input type="reset" value="重置"/>
                    </div>
                </form>
            </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/oa/js/jquery-1.11.3.min.js"></script>
<script>

    $(".tianjiabtn").children("input[type='submit']").click(function(){
        if(!$("input").val() || !$("textarea").val()||!$('input[name="department_leaderphone"]')||!$('input[name="department_parentleader"]')||!$('input[name="department_parent"]')||!$('input[name="department_leader"]')||!$('input[name="department_name"]')||!$('input[name="department_leader"]')){
            $(".login-error").html("提交不成功：信息填写不完整");
            return false
        }else{
            $("#department_insert_form").submit();
        }
    });
</script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>

</c:when>
</c:choose>
</body>
</html>