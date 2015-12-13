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
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/contact_person_check.do">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work/">工作</a></li>
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
            <li><a href="department_check.do?department_page=1">部门管理</a>
            </li>
            <li style="margin-bottom: -7px"><a href="employee_check.do?employee_page=1" class="active">人员管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="employee_add_check.do" class="red">添加人员</a><i></i></dd>
                    <dd><a href="../error.jsp">修改</a></dd>
                </dl>
            </li>
            <li><a href="service_group_check.do?service_group_page=1">五服务小组管理</a></li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="employee_check.do?employee_page=1">管理</a>&gt;<a href="employee_check.do?employee_page=1">人员管理</a>&gt;<span>添加人员</span></h4>

        <div class="bmtj ">
            <form action="./employee_insert.do" method="post" id="employee_insert">
                <div class="checkradio" style="margin: 0 0 -20px 0;"><input class="shoudong" type="radio" name="cun">&nbsp;手动添加人员</div>
                <div class="shuru" style="height:230px;padding-top:20px;margin: 20px 0">
                    <div>
                        <p><span>员工姓名</span>
                            <input class="input200" type="text" name="employee_name"/></p>

                        <p><span>员工性别</span>
                            <input  type="radio" name="employee_gender" value="0" checked />&nbsp;男&nbsp;&nbsp;
                            
                            <input  type="radio" name="employee_gender" value="1"/>&nbsp;女
                        </p>
                    </div>
                    <div class="clear">
                        <p><span>出生日期</span>
                            <input class="timedata input200 " type="text" name="employee_birthdate"/></p>

                        <p><span>身份证号</span>
                            <input class="input200" type="text" name="employee_idcode"/></p>
                    </div>
                    <div class="clear">

                        <p><span>职&nbsp;&nbsp;务</span>
                            <input class="input200" type="text" name="employee_position"/></p>

                        <p><span>入职日期</span>
                            <input class="input200 timedata" type="text" name="employee_addworktime"/></p>
                    </div>
                    <div>
                        <p><span>所属部门</span>
                            <!--传入部门id-->
	                        <select class="selectsz" name="employee_department_id" form="employee_insert" >
	                         <c:forEach var="department_info" items="${department_info_list}" >
	                            <option value ="${department_info.get_department_id()}">${department_info.get_department_name()}</option>
	                         </c:forEach>    
	                         </select>
                        </p>

                        <p><span>直接上级</span>
                            <select class="selectsz" name="employee_leader_id" form="employee_insert" >
                          <c:forEach var="employee_info" items="${employee_info_list}" >
                            <option value ="${employee_info.get_employee_id()}">${employee_info.get_employee_name()}</option>
                         </c:forEach>
                             <option value="-1">无</option>   
                         </select>
                        </p>
                    </div>
                    <div>

                        <p><span>联系电话</span>
                            <input class="input200" type="text" name="employee_phone"/></p>

                        <p><span>工作职责</span>
                            <input class="input200" type="text" name="employee_duty"/></p>

                    </div>
                    <div>
                        <p>
                            是否有管理员权限&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="admin"/>&nbsp; 有  &nbsp; &nbsp;
                            <input type="radio" name="admin" checked="checked"/>&nbsp; 无 
                        </p>

                    </div>

                </div>
                <br/>
                <br/>
                <div class="clear"></div>
                <div class="checkradio clear"><input class="piliang" type="radio" name="cun">&nbsp;批量导入人员</div>
                <ul class="batch">
                    <li style="border-right: 1px solid #c9c9c9">
                        <a href="/DownLoad/1.rar">样例下载</a><span>请参照样例的格式<br>编辑上传内容</span>
                    </li>
                    <li><a  style="position: relative">
                        <input  class="filew" type="file" style="position: absolute;top:30px;opacity: 0;"/>
                        添加附件</a>
                        <span>附件的格式请与<br>表单的格式一致</span>
                    </li>

                </ul>
                <div></div>
                <div class="tianjiabtn">
                    <b class="login-error" style="margin-right: 10px;color: #cc0000"></b>
                    <input style="margin:20px 0 3px 0 " type="submit" value="提交" />
                </div>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
<script>
    //手动添加与批量导入的选择
    $(".shoudong").click(function(){
        $(".shuru").css({color:"#333"}).children().children().children().removeAttr("disabled");
        $(".batch").css({color:"#999"}).children().children().find("input").attr("disabled","disabled");
    })
    $(".srvul").focus(function(){
        $(this).val("")
    })
    $(".piliang").click(function(){
        $(".shuru").css({color:"#999"}).children().children().children().attr("disabled","disabled");
        $(".batch").css({color:"#333"}).children().children().find("input").removeAttr("disabled");
    })
    
    $(".tianjiabtn").children("input[type='submit']").click(function(){
        if(!$("input").val() ||!$('input[name="employee_birthdate"]').val()||!$('input[ name="employee_idcode"]').val()||!$('input[ name="employee_position"]').val()||!$('input[name="employee_addworktime"]').val()||!$('input[name="employee_duty"]').val()){
            $(".login-error").html("提交不成功：信息填写不完整");
            return false
        }else{
            $("#employee_insert").submit();
        }
    });


</script>
</body>
</html>