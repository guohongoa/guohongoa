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
<c:choose>
  <c:when test="${user_group_type==1}">
      <c:set var="service_type_name" value="法政法规服务"/>
  </c:when>
  <c:when test="${user_group_type==2}">
      <c:set var="service_type_name" value="经济发展服务"/>
  </c:when>
  <c:when test="${user_group_type==3}">
      <c:set var="service_type_name" value="和谐稳定服务"/>
  </c:when>
  <c:when test="${user_group_type==4}">
      <c:set var="service_type_name" value="环境卫生服务"/>
  </c:when>
  <c:when test="${user_group_type==5}">
      <c:set var="service_type_name" value="文体活动服务"/>
  </c:when>          
</c:choose>

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
                <li><a href="../msg/check_unread_msg.do?employee_id=${user_id}&msg_page=1"><i class="icon icon_m"><em>99</em></i>消息</a></li>
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
    <div class="left_menu tzlb">
        <h3><a href="">五服务</a></h3>
        <ul>
            <li><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=0" class="active">${service_type_name}</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="javasrcipt:(0)" class="red">发起服务</a><i></i></dd>
                    <dd><a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=1" style="border-bottom: 1px solid #c9c9c9;height: 35px">我的服务</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="../work">工作</a>&gt;<a href="service_check_by_user.do?service_page=1&service_sender_id=${user_id}&flag=0">五服务</a>&gt;<span>${service_type_name}</span></h4>
        <div class="tztj">
            <form id="post_tz" action="send_service.do" method="post">
             
                <p><span>汇报给</span>
                <c:choose>
                  <c:when test="${work_contact_list.size()!=0}">
                   <c:forEach var="work_contact_info" items="${work_contact_list}">
                     <select name="service_receiver_id" id="post_tz">
                        <option value="${work_contact_info.get_friend_id()}">${work_contact_info.get_friend_name()}</option>
                     </select>
                   </c:forEach>
                    </c:when>
                   <c:otherwise>
                      <select name="service_receiver_id"><option value="-1">无可选汇报领导</option></select>
                   </c:otherwise>
                  
                </c:choose>  
                </p>
           
                <p><span>服务主题</span><input type="text" name="service_theme"/></p>
                 
                <c:choose>
                  <c:when test="${user_group_type==1}">
                   <p><span>服务类型</span><input class="grey9" type="text" value="法政法规服务" readonly="readonly"/></p>
                                          <input name="service_type"  type="hidden"  value="${user_group_type-1}" />
                  </c:when>
                  <c:when test="${user_group_type==2}">
                   <p><span>服务类型</span><input  class="grey9" type="text" value="经济发展服务"  readonly="readonly"/></p>
                                         <input name="service_type" type="hidden"  value="${user_group_type-1}" />
                  </c:when>
                  <c:when test="${user_group_type==3}">
                   <p><span>服务类型</span><input class="grey9" type="text" value="和谐稳定服务"  readonly="readonly" /></p>
                                          <input name="service_type" type="hidden"  value="${user_group_type-1}" />
                  </c:when>
                  <c:when test="${user_group_type==4}">
                   <p><span>服务类型</span><input class="grey9" type="text" value="环境卫生服务"  readonly="readonly"/></p>
                                          <input name="service_type" type="hidden"  value="${user_group_type-1}" />
                  </c:when>
                  <c:when test="${user_group_type==5}">
                   <p><span>服务类型</span><input  class="grey9" type="text" value="文体活动服务"  readonly="readonly"/></p>
                                          <input name="service_type" type="hidden"  value="${user_group_type-1}" />
                  </c:when>
                </c:choose>
            
                 
                <p><span>责任人</span><input class="grey9" type="text" name="service_sender" value="${user_name}"  readonly="readonly"/></p>
                <!--发送人对应id--><input type="hidden" name="service_sender_id" value="${user_id}" />
                <p><span>联系电话</span><input name="service_sender_phone" class="grey9" type="text" value="${user_phone}"  readonly="readonly"/></p>
                <p><span>服务目标</span><input type="text" name="service_target"/></p>
                <p><span>服务周期</span><input class="input100 timedata" type="text" name="service_begintime"/>&nbsp; —— &nbsp;<input class="input100 timedata" type="text" name="service_endtime"/></p>
                <p><span>服务内容</span><textarea name="service_content" form="post_tz"></textarea></p>
                <!--发送的隐藏信息-->
                 <!--五服务审批状态--><input type="hidden" name="service_status" value="0"> <!--初始状态均为未审批，值为0-->
                 <!--所属村庄id   <input type="hidden" name="service_village_id" value="1">-->
                 <!--所属村庄名称  <input type="hidden" name="service_village_name" value="致富村">-->
                 <input type="hidden" name="service_group_id" value="${user_service_group_id}">
                 
                <p class="tztj_btn"><b class="login-error"></b>&nbsp;<button style="margin-right: -30px">提交</button></p>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
    //提交不为空的验证
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