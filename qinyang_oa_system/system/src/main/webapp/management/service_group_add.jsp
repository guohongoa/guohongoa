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
    <div class="left_menu tzlb" style="height: 335px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li><a href="department_check.do?department_page=1" >部门管理</a>
            </li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1" class="active">五服务小组管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_group_add.jsp" class="red">添加小组成员</a><i></i></dd>
                    <dd ><a href="../error.jsp" style="border-bottom: 1px solid #c9c9c9;height: 35px">修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="">管理</a>&gt;<a href="">五服务小组管理</a>&gt;<span>添加小组成员</span></h4>
        <div class="tztj">
            <form  action="service_group_add.do" method="post" id="group_add_form">
                <div class="checkradio"><input class="shoudong" type="radio" name="cun">&nbsp;手动添加五服务小组</div>
                <div class="shuru">
                    <p><span>镇(县)名</span>
                         <select style="height: 27px" name="service_village_county_id" form="group_add_form" id="county" form="group_add_form">
                           <!--   <option selected="selected" value="-1">请选择</option>-->
                            <c:forEach var="service_village_county_info" items="${service_village_county_info_list}">
                                 <option value="${service_village_county_info.get_service_village_county_id()}">${service_village_county_info.get_service_village_county_name()}</option>
                            </c:forEach>
                        </select>
                     </p>
                    <p><span>村名</span>
                         <!--  
                         <select id="-1" class="village">
                            <option>请选择</option>
                         </select>
                         -->
                         <c:forEach var="service_village_county_info" items="${service_village_county_info_list}">
                           <select  id="${service_village_county_info.get_service_village_county_id()}" class="village">
                               <c:forEach var="service_village_info" items="${service_village_info_list}">
                                  <c:choose>
                                     <c:when test="${service_village_county_info.get_service_village_county_id()==service_village_info.get_service_village_county_id()}">
                                        <option  value="${service_village_info.get_service_village_id()}">${service_village_info.get_service_village_name()}</option>
                                     </c:when>
                                   </c:choose>
                                 </c:forEach>
                            </select>
                          
                        </c:forEach>
                        
                      </p>
                    <p><span>服务类型</span>
                       <input type="hidden" name="service_village_id">
                        <select name="service_type" style="height: 27px">
                            <option value="0">法政法规服务</option>
                            <option value="1">经济发展服务</option>
                            <option value="2">和谐稳定服务</option>
                            <option value="3">环境卫生服务</option>
                            <option value="4">文体活动服务</option>
                        </select>
                    </p>
                    <p><span>责任人</span><input type="text" name="service_group_leader"/></p>
                    <p><span>联系电话</span><input type="text" name="service_group_phone"/></p>
                    <p style="margin-bottom: 10px"><span>小组职责</span><textarea name="service_group_duty"></textarea></p>
                    <p><span>小组成员</span><textarea class="srvul" name="service_group_member" form="group_add_form" placeholder=" 请输入每个成员姓名及手机号，以空格间隔，例：张三 13812345678 李四 13987654321 "></textarea></p>
                </div>
                <h6>姓名与姓名之间请以一个‘空格’隔开</h6>
                <div class="checkradio"><input class="piliang" type="radio" name="cun">&nbsp;批量导入五服务小组</div>
                <ul class="batch">
                    <li style="border-right: 1px solid #c9c9c9"><a href="/DownLoad/1.rar">样例下载</a><span>请参照样例的格式<br>编辑上传内容</span></li>
                    <li><a  style="position: relative">
                        <input  class="filew" type="file" style="position: absolute;top:30px;opacity: 0;"/>
                        添加附件</a>
                        <span>附件的格式请与<br>表单的格式一致</span>
                    </li>
                </ul>
                <p class="tztj_btn"><b style="margin-right:10px;" class="login-error"></b><button style="margin: 0 -30px 0 0 ">确定添加</button></p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.5.2.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    //手动添加与批量导入的选择
    $(".shoudong").click(function(){
        $(".shuru").css({color:"#333"}).children().children().removeAttr("disabled");
        $(".srvul").removeAttr("disabled") //.val("姓名与姓名之间请以一个‘空格’隔开");
        $(".batch").css({color:"#999"}).children().children().find("input").attr("disabled","disabled");

    })
    $(".srvul").focus(function(){
        $(this).val("")
    })
    $(".piliang").click(function(){
        $(".shuru").css({color:"#999"}).children().children().attr("disabled","disabled");
        $(".batch").css({color:"#333"}).children().children().find("input").removeAttr("disabled");
    })
    
     $(".tztj_btn").children("button").click(function(){
        if(!$("input").val() || !$("textarea").val()||!$('input[name="service_group_phone"]').val()||!$('textarea[name="service_group_member"]').val()){
            $(".login-error").html("提交不成功：信息填写不完整");
            return false
        }else{
            $("#service_add").submit();
        }
    });
    
    //--------------------------------
    //二级联动
   var currentShowCity=0;

$(document).ready(function(){
   $("#county").change(function(){
	   $("#county option").each(function(i,o){
		   if($(this).attr("selected"))
		   {
		       var county_id=$(this).val();
			   $(".village").hide();
			   $("select[id='"+county_id+"']").show();
			   $("input[name='service_village_id']").val($("select[id='"+county_id+"']").val());
		   }
	   });
   });
   $("#county").change();
});

</script>
</body>
</html>