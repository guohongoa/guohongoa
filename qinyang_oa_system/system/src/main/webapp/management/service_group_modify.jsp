<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <c:set var="service_group_page" value="${param.service_group_page}"/>
</head>
<body>
<c:choose>
        <c:when test="${not empty user_admin}">
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
    <div class="left_menu tzlb" style="height: 330px">
        <h3><a href="">管理</a></h3>
        <ul>
            <li><a href="check_service_village_detail.do?village_page=1">村镇管理</a></li>
            <li><a href="department_check.do?department_page=1" >部门管理</a>
            </li>
            <li><a href="employee_check.do?employee_page=1">人员管理</a></li>
            <li><a href="service_group_check.do?service_group_page=1" class="active">五服务小组管理</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_group_add_display.do" >添加小组成员</a><i></i></dd>
                    <dd><a href="" class="red" style="border-bottom: 1px solid #c9c9c9;height: 35px">修改</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!--右侧-->
    <div class="right_content">
        <h4><a href="service_group_check.do?service_group_page=1">管理</a>&gt;<a href="service_group_check.do?service_group_page=1">五服务小组管理</a>&gt;<span>五服务小组详情修改</span></h4>
        <div class="tztj bmtjxg">
            <form  action="service_group_modify_commit.do" method="post" id="service_group_modify">
                <input type="hidden" name="service_group_id" value="${service_group_info.get_service_group_id()}">
                <input type="hidden" name="service_group_page" value="${service_group_page}">
                
                <p><span>镇(县)名</span>
                         <select style="height: 27px" name="service_village_county_id" id="county" form="service_group_modify">
                           <!--   <option selected="selected" value="-1">请选择</option>-->
                            <c:forEach var="service_village_county_info" items="${service_village_county_info_list}">
                                 <c:choose>
                                    <c:when test="${service_group_info.get_service_village_county_id()==service_village_county_info.get_service_village_county_id()}">
                                       <option value="${service_village_county_info.get_service_village_county_id()}" selected="selected">${service_village_county_info.get_service_village_county_name()}</option>
                                    </c:when>
                                    <c:otherwise>
                                      <option value="${service_village_county_info.get_service_village_county_id()}">${service_village_county_info.get_service_village_county_name()}</option>
                                    </c:otherwise>
                                 </c:choose>
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
                           <select   id="${service_village_county_info.get_service_village_county_id()}" class="village">
                               <c:forEach var="service_village_info" items="${service_village_info_list}">
                                  <c:choose>
                                     <c:when test="${service_village_county_info.get_service_village_county_id()==service_village_info.get_service_village_county_id()}">
                                        <c:choose>
                                          <c:when test="${service_group_info.get_service_village_id()==service_village_county_info.get_service_village_county_id() }">
                                               <option  value="${service_village_info.get_service_village_id()}" selected="selected">${service_village_info.get_service_village_name()}</option>
                                           </c:when>
                                           <c:otherwise>
                                               <option  value="${service_village_info.get_service_village_id()}">${service_village_info.get_service_village_name()}</option>
                                           </c:otherwise>
                                        </c:choose>
                                     </c:when>
                                   </c:choose>
                                 </c:forEach>
                            </select>
                          
                        </c:forEach>
                        
                      </p>
                <input type="hidden" name="service_village_id">
                <p><span>服务类型</span>
                    <c:choose>
                      <c:when test="${service_group_info.get_service_type()==0}">
                       <select name="service_type" style="height: 27px" form="service_group_modify">
                           <option value="0" selected="selected">法政法规服务</option>
                           <option value="1">经济发展服务</option>
                           <option value="2">和谐稳定服务</option>
                           <option value="3">环境卫生服务</option>
                           <option value="4">文体活动服务</option>
                        </select>
                       </c:when>
                       <c:when test="${service_group_info.get_service_type()==1}">
                       <select name="service_type" style="height: 27px" form="service_group_modify">
                           <option value="0">法政法规服务</option>
                           <option value="1" selected="selected">经济发展服务</option>
                           <option value="2">和谐稳定服务</option>
                           <option value="3">环境卫生服务</option>
                           <option value="4">文体活动服务</option>
                        </select>
                       </c:when>
                       <c:when test="${service_group_info.get_service_type()==2}">
                       <select name="service_type" style="height: 27px" form="service_group_modify">
                           <option value="0">法政法规服务</option>
                           <option value="1" >经济发展服务</option>
                           <option value="2" selected="selected" >和谐稳定服务</option>
                           <option value="3">环境卫生服务</option>
                           <option value="4">文体活动服务</option>
                        </select>
                       </c:when>
                       <c:when test="${service_group_info.get_service_type()==3}">
                       <select name="service_type" style="height: 27px" form="service_group_modify">
                           <option value="0">法政法规服务</option>
                           <option value="1">经济发展服务</option>
                           <option value="2">和谐稳定服务</option>
                           <option value="3" selected="selected">环境卫生服务</option>
                           <option value="4">文体活动服务</option>
                        </select>
                       </c:when>
                        <c:when test="${service_group_info.get_service_type()==4}">
                       <select name="service_type" style="height: 27px" form="service_group_modify">
                           <option value="0">法政法规服务</option>
                           <option value="1">经济发展服务</option>
                           <option value="2">和谐稳定服务</option>
                           <option value="3">环境卫生服务</option>
                           <option value="4" selected="selected">文体活动服务</option>
                        </select>
                       </c:when>
                    </c:choose>
                </p>
                <p><span>责任人</span><input type="text" name="service_group_leader" value="${service_group_info.get_service_group_leader()}"/></p>
                <p><span>联系电话</span><input type="text"  name="service_group_phone" value="${service_group_info.get_service_group_phone()}"/></p>
                <p style="margin-bottom: 10px"><span>小组职责</span><textarea  maxlength="100" name="service_group_duty" form="service_group_modify"> ${service_group_info.get_service_group_duty()}</textarea></p>
                <p><span>小组成员</span><textarea  name="service_group_member" form="service_group_modify">${service_group_info.get_service_group_member()}</textarea></p>
                <p class="tztj_btn"><b class="login-error"></b><button style="margin: 0 -30px 0 0">确定修改</button></p>
            </form>
        </div>
        <br/>
    </div>

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.5.2.min.js"></script>

<script>
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
	   
	   $(".village").each(function(){
		     
		   $(this).change(function(){
			   $("input[name='service_village_id']").val($(this).val());
		   });
	   });
	});

 </script>
 </c:when>
 </c:choose>
</body>
</html>