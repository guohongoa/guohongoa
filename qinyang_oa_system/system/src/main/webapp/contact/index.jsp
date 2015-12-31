<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <script src="http://101.200.196.121:8080/oa/js/style.js"></script>
    <script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript">
    
    
   
    $(document).ready(function(){
    	  $(".sltjpop").hide();
    	
    	 //添加好友弹出事件
    	  $("a#add_friend").click(function(){
    		  $("#pop1").show();
    	  });
    	});
    </script>
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
                <li><a href="../msg/check_unread_msg.do?employee_id=${user_id}&msg_page=1"><i class="icon icon_m"></i>消息</a></li>
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="#" class="active" href="#">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work">工作</a></li>
        <li><a href="">嘉言民生</a></li>
        <li><a href="">政策法规</a></li>
        <li><a href="">最新资讯</a></li>
        <li><a href="">党员信息</a></li>
        <li><a href="">行政办公</a></li>
        <li><a href="">红色家园</a></li>
    </ul>
</div>
<!--主体-->
<div class="content" style="margin-bootom:200px;">
    <div class="sili" >
        <!--第一列-->
        <div class="silione">
            <span><a class="mess_btn" id="add_friend" href="javascript:void(0);"></a><a href="contact_msg_display.do?contact_request_receiver_id=${user_id}"></a></span>  <!--添加联系人  -->
            <div class="swcw sili_content1">
                <h4 style="line-height: 20px;padding: 5px 0"> 党员群众服务中心<br>嘉言民生代办员</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list1}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop" id="all_1">
                            <ul>
                                 <c:forEach var="contact_person_info" items="${contact_info_list1}">
                                   <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                 </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_1" class="closeopen">展开</a></p>
                    <i></i>
                </div>

            </div>
        </div>
        <!--第二列-->
        <div>
            <div class="swcw sili_content2">
                <h4>市委常委</h4>
                <div>
                    <ul>
                        <c:forEach var="contact_person_info" items="${contact_info_list2}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop" id="all_2">
                            <ul>
                                 <c:forEach var="contact_person_info" items="${contact_info_list2}">
                                    <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                 </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a  id="pop_contact_2" class="closeopen">...展开</a></p>
                    <i></i>
                    <b></b>
                    <em></em>
                </div>

            </div>
            <div class="swcw sili_content3">
                <h4>乡镇办党（工）委</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list3}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop" id="all_3">
                            <ul>
                                <c:forEach var="contact_person_info" items="${contact_info_list3}">
                                    <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_3" class="closeopen">...展开</a></p>
                    <i></i>
                    <b></b>
                    <em></em>
                </div>

            </div>
            <div class="swcw sili_content4">
                <h4>农村（社区）党员组织</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list4}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li  class="pop" id="all_4">
                            <ul>
                                <c:forEach var="contact_person_info" items="${contact_info_list4}">
                                  <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_4" class="closeopen">...展开</a></p>
                    <b></b>
                    <em></em>
                    <i></i>
                    <sub></sub>
                    <sup></sup>

                </div>

            </div>
            <div class="swcw sili_content5">
                <h4>农村（社区）党员干部</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list5}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li  class="pop" id="all_5">
                            <ul>
                                <c:forEach var="contact_person_info" items="${contact_info_list5}">
                                  <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_5" class="closeopen">...展开</a></p>
                    <i></i>
                </div>
            </div>
            <div class="swcw sili_content6">
                <h4>群众</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list6}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li  class="pop" id="all_6">
                            <ul>
                               <c:forEach var="contact_person_info" items="${contact_info_list6}">
                                 <li><a href="ccontact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                               </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_6" class="closeopen">...展开</a></p>
                    <i></i>
                    <b></b>
                </div>
            </div>
        </div>
        <!--第三列-->
        <div>
            <div class="swcw sili_content7">
                <h4>农村（社区）事务</h4>
               <div>
                   <ul>
                       <c:forEach var="contact_person_info" items="${contact_info_list11}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                       <li  class="pop" id="all_7">
                           <ul>
                              <c:forEach var="contact_person_info" items="${contact_info_list11}">
                                 <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                              </c:forEach>
                           </ul>
                           <p class="clear"><a href="" class="openclose">收起</a></p>
                       </li>
                   </ul>
                   <p class="clear"><a id="pop_contact_7" class="closeopen">...展开</a></p>
               </div>
            </div>
        </div>
        <!--第四列-->
        <div>
            <div class="swcw sili_content8">
                <h4>市政府</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list8}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li  class="pop" id="all_8">
                            <ul>
                               <c:forEach var="contact_person_info" items="${contact_info_list8}">
                                 <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_8" class="closeopen">...展开</a></p>
                    <i></i>
                </div>
            </div>
            <div class="swcw sili_content9">
                <h4>市职能部门</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list9}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop" id="all_9">
                            <ul>
                                <c:forEach var="contact_person_info" items="${contact_info_list9}">
                                   <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                </c:forEach>
                            </ul>
                            <p class="clear"><a  href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_9" class="closeopen">...展开</a></p>
                    <i></i>
                </div>
            </div>
            <div class="swcw sili_content10">
                <h4 style="line-height: 20px;padding: 5px 0">乡镇办内设机<br>构和基层站所</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list10}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li  class="pop" id="all_10">
                            <ul>
                                <c:forEach var="contact_person_info" items="${contact_info_list10}">
                                   <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                 </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_10" class="closeopen">...展开</a></p>
                </div>
            </div>

            <div class="swcw sili_content11">
                <h4>村民小组</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list7}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop" id="all_11">
                            <ul>
                                 <c:forEach var="contact_person_info" items="${contact_info_list7}">
                                    <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                                 </c:forEach>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a id="pop_contact_11" class="closeopen">...展开</a></p>
                </div>
            </div>
        </div>

    </div>

</div>
<div class="clear" style="height:150px;">
</div>

<div class="sltjpop" id="pop1">
    <div class="slpopone">
        <h6>添加联系人 <a class="closebtn"></a></h6>
        <div>
            <form action="" method="post">
                <div class="slpopone_content">
                    <p id="msg">请输入要添加的手机号</p>
                    <input id="tel" type="text"/>
                    <input id="owner_employee_id" type="hidden" value="${user_id}">
                    <span></span>
                    <i></i>
                </div>
                <div class="slpopone_btn">
                    <input id="tel_sbm" type="button" value="下一步"/>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="sltjpop" id="pop2">
    <div class="slpopone">
        <h6>添加联系人 <a class="closebtn"></a></h6>
        <div>
            <form action="" method="post">
                <div class="slpopone_content">
                   <p>请输入要添加的联系人手机号</p>
                       <input id="tel" type="text" >
                       <span class="magnifier"></span>
                   <p>该用户不在您的直接上级或下级部门，请输入其它号码</p>
                </div>
                <div class="slpopone_btn">
                    <input id="tel_sbm" type="button" value="下一步"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="sltjpop" id="pop3">
    <div class="slpopone">
        <h6>添加联系人 <a class="closebtn"></a></h6>
        <div>
            <form action="" method="post">
                <div class="slpopone_content">
                    <p>请输入要添加的联系人手机号</p>
                    <input id="tel" type="text" />
                    <span class="magnifier"></span>
                    <p>您输入的号码有误，请重新输入</p>
                </div>
                <div class="slpopone_btn">
                    <input id="tel_sbm" type="button" value="下一步"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="sltjpop" id="pop4">
    <div class="slpopone slpopthree">
        <h6>添加联系人 <a class="closebtn"></a></h6>
        <div>
            <form action="" method="post">
                <div class="slpopone_content">
                    <p>请输入要添加的手机号</p>
                    <input id="tel4" type="text" value="13800000000"/>
                    <span class="magnifier"></span>
                    <div  id="info" style="width:285px;padding:10px 10px 15px 85px;height: 80px;border-top: 1px solid #c9c9c9;margin-left: -10px;margin-top: 7px ">
                        <p>姓名：<span>王某</span><span>（13800000000）</span></p>
                        <p>部门：<span>某某部门</span></p>
                        <p>职务：<span>某某职务</span></p>

                    </div>
                </div>
                <div class="slpopone_btn" >
                    <input id="tel_add" style="margin-top: 3px;color: #fff;border-color: #9b0f0f" type="button" value="添加"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="sltjpop" id="pop5">
    <div class="slpopone sipopfour">
        <h6>添加联系人 <a class="closebtn"></a></h6>
        <div>
            <form action="confirm_request.do" method="post" id="confrim_request_form">
                <div class="slpopone_content">
                    <p>您将添加以下联系人</p>
                    <p id="info3">（13912345678）</p>
                    <p>验证人需要验证您的身份，请输入您的请求信息</p>
                    <textarea name="cotact_reuqest_sendmsg" form="confrim_request_form"></textarea>
                </div>
                <div class="slpopone_btn" >
                     <input id="contact_request_sender_id" name="contact_request_sender_id" type="hidden"/>
                     <input id="contact_request_receiver_id" name="contact_request_receiver_id" type="hidden"/>
                     <input style="margin-right: 10px;margin-top: 7px;font-weight: normal" type="button" value="取消"/>
                     <input id="confirm_request_btn" style="font-weight: normal" type="submit" value="发送"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="sltjpop" id="pop6">
    <div class="slpopone sipopfive">
        <h6>添加联系人 <a class="closebtn"></a></h6>
        <div>
                <div class="slpopone_content" style="padding-top: 0px">
                    <p style="font-size: 12px;">
                        <span>添加联系人</span><br/>
                        <span>成功添加对方为直属联系人</span>
                    </p>
                    <div class="slpopone_btn">
                        <input  id="i_know" style="background-color: #cc0000;color: #fff;margin-right: -10px;padding: 0;margin-top: 20px;font-weight: normal;border-color: #9b0f0f" type="button" value="我知道了"/>
                    </div>


                </div>
                <div class="sltjs" id="info2"  style="margin-top: 25px;width:268px ">
                    <p >姓名：<span>王某</span><span>（13800000000）</span></p>
                    <p>部门：<span>某某部门</span></p>
                    <p>职务：<span>某某职务</span></p>
                </div>

                <div class="slpopone_btn">
                    <input style="color: #000;font-weight: normal;margin-right: 23px" type="button" value="添加"/>
                </div>

        </div>
    </div>
</div>
<!--<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>-->
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>

<script>
    $("#tel").keyup(function(e){
        if($(this).val()){
            $("#tel_sbm").css({background:"#cc0000",color:"#f5f5f5",borderColor:"#9f0808"});
            $(".slpopone_content").find("span").css({left:"22px"}).next().css({visibility:" visible"})
        }else{
            $("#tel_sbm").css({background:"#f5f5f5"})
        }
    })
    
    $(document).ready(function(){
         $("#tel_sbm").click(function(){
         var employee_phone=$("#tel").val();
         //var path="guohong";
         var path="system";
         //用户的id，需做登录检测
         //尝试添加
         var owner_employee_id=$("#owner_employee_id").val();
         htmlobj=$.ajax({url:"/"+path+"/contact/add.do?friend_employee_phone="+employee_phone+"&owner_employee_id="+owner_employee_id, 
        	       success:function(data){  
        	       $("div[id^='pop']").hide();
        	       var return_type=$(data).filter('div.return_type')[0].innerHTML;
                   if(return_type==1)
                   {
                	   $("#pop2").show();
                	   $("#tel").val($(data).filter('div.phone')[0].innerHTML);
                   }   //用户不属于上级或下级
                   else if(return_type==2)
                   {
                	   $("#pop3").show();
                	   $("#tel").val($(data).filter('div.phone')[0].innerHTML);
                   }//用户不存在
                   else{$("#pop4").show();
                        var tmp=$(data).filter('div.phone')[0].innerHTML;
                        $("#tel4").val($(data).filter('div.phone')[0].innerHTML);
                        var str=$(data).filter('div.msg')[0].innerHTML;
                        $("#info").html(str);
                        }//显示用户信息
                   
         }  });
         //实际添加
         $("#tel_add").click(function(){
        	 var employee_phone=$("#tel4").val();
        	 var owner_employee_id=$("#owner_employee_id").val();
        	 htmlobj=$.ajax({url:"/"+path+"/contact/contact_relationship_add.do?friend_employee_phone="+employee_phone+"&owner_employee_id="+owner_employee_id,
        		 success:function(data)
        		 {
        			 $("div[id^='pop']").hide();
        			 var return_type=$(data).filter('div.return_type')[0].innerHTML;
        	    if(return_type==1)
        	    {
        	    	 $("#pop6").show();
        	    	 var str=$(data).filter('div.msg')[0].innerHTML;
                     $("#info2").html(str);
        	    }
        	    else if(return_type==0)
        	    {
        	    	$("#pop3").show();
        	    }
        	    else
        	    {
        	    	$("#pop5").show();
        	    	var phone=$(data).filter('div.msg')[0].innerHTML;
        	    	var contact_request_sender_id  =  $(data).filter('div.contact_request_sender_id')[0].innerHTML;
        	    	var contact_request_receiver_id=   $(data).filter('div.contact_request_receiver_id')[0].innerHTML;
        	    	console.log(contact_request_sender_id);
        	    	console.log(contact_request_receiver_id);
        	    	$('#contact_request_sender_id').val(contact_request_sender_id);
        	    	$('#contact_request_receiver_id').val(contact_request_receiver_id);
        	 
        	    	$("#info3").html(phone); 
        	    }
        	    
        	       
        		
        		}
        	    
        });
         });
         
         $("#i_know").click(function()
         {
        	 $("div[id^='pop").hide();
        	 
         });
         
         $("#confirm_request_btn").click(function()
         {
        	 $("div[id^='pop").hide();
         });
         
  });
});
    
   $(".closeopen").click(function(){
	   
       var path="guohong";
       //var path="system";
       //用户的id，需做登录检测
       //尝试添加
       var owner_employee_id=$("#owner_employee_id").val();
       
	   var id=$(this).attr("id");
	   var pop_id=id.substr(12,id.length);
	   console.log(pop_id);
	   var department_id;
	   
	   switch(pop_id)
	   {
	      case "1": department_id=7;break;
	      case "2": department_id=1;break;
	      case "3": department_id=3;break;
	      case "4": department_id=5;break;
	      case "5": department_id=8;break;
	      case "6": department_id=11;break;
	      case "7": department_id=9;break;
	      case "8": department_id=2;break;
	      case "9": department_id=4;break;
	      case "10": department_id=6;break;
	      case "11": department_id=10;break;
	   }
	   
	   htmlobj=$.ajax({url:"/"+path+"/contact/contact_all_by_user_and_department.do?department_id="+department_id+"&employee_id="+owner_employee_id,async:false});
		$(".all_"+id).html(htmlobj.responseText);
	   
   });
</script>
</body>
</html>