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
                <li><a href="../msg/check_unread_msg.do?employee_id=${user_id}&msg_page=1"><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href=""><span>888</span>条工作提醒</a></li>
                    <li><a href=""><span>2</span>条服务提醒</a></li>
                    <li ><a href=""><span>3</span>条待审核记录</a></li>
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
        <li><a href="contact_person_check.do?employee_id=${user_id}" class="active">四联</a></li>
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
<div class="content">
    <h4 style="font-weight: normal"><a href="">四联</a>&gt;<span>联系人详情</span></h4>
    <div class="slxq" style="margin-top: 20px" id="level1">
        <c:choose>
           <c:when test="${owner_department.get_department_group_type()==0}">
            <h5 style="font-weight: normal">
           </c:when>
           <c:otherwise> 
             <h5 class="bulec" style="font-weight: normal">
           </c:otherwise>
        </c:choose>
        <span id="title${owner_info.get_employee_department_id()}" >${owner_info.get_employee_department_name()}</span>
        </h5>
        <div>
            <div class="contacts" id="${owner_info.get_employee_id() }">
                <ul>
                    <li>姓名：<span>${owner_info.get_employee_name()}</span></li>
                    <li>部门：<span>${owner_info.get_employee_department_name()}</span></li>
                    <li>职务：<span>${owner_info.get_employee_position()}</span></li>
                    <li>职责：<span>${owner_info.get_employee_duty()}</span></li>
                    <li>电话：<span>${owner_info.get_employee_phone()}</span></li>
                </ul>
                <p>制度：<span>制度</span></p>
            </div>
            <c:choose>
             <c:when test="${friend_list.size()!=0}">
               <i id="arrow1"></i>
             </c:when>
            </c:choose>
        </div>
    </div>
    <div class="slxq" id="level2">
      <c:choose>
        <c:when test="${friend_list.size()!=0}">
        <c:choose>
           <c:when test="${department_list.size()!=1}">
            <h5 style="font-weight: normal">
           </c:when>
           <c:otherwise>
             <c:choose> 
                <c:when test="${department_list.get(0).get_department_group_type()==1 }">
                   <h5 class="bulec" style="font-weight: normal">
                </c:when>
                <c:otherwise>
                  <h5 style="font-weight: normal">
                </c:otherwise>
             </c:choose>
           </c:otherwise>
        </c:choose>
        <c:forEach var="department_info" items="${department_list}">
             <span id="title${department_info.get_department_id()}" class="color${department_info.get_department_group_type()}">${department_info.get_department_name()}</span>
        </c:forEach>
        
        </h5>
        <div>
         <c:forEach var="friend_info" items="${friend_list}">
            <div class="contacts" id="${friend_info.get_employee_id()}">
              
                <ul>
                    <li>姓名：<span>${friend_info.get_employee_name()}</span></li>
                    <li>部门：<span>${friend_info.get_employee_department_name()}</span></li>
                    <li>职务：<span>${friend_info.get_employee_position()}</span></li>
                    <li>职责：<span>${friend_info.get_employee_duty()}</span></li>
                    <li>电话：<span>${friend_info.get_employee_phone()}</span></li>
                </ul>
               
                <p>制度：<span>制度</span></p>
            </div>
            <form>
               <input type="hidden" name="department_id" value="${friend_info.get_employee_department_id()}" >
            </form>
             </c:forEach>
              <i id="arrow2"></i>
        </div>
        </c:when>
        </c:choose>
    </div>
    
    <div class="slxq" id="level3">
    </div>
    <div class="slxq" id="level4">
    </div>
    <div class="slxq" id="level5">
    </div>
    <div class="slxq" id="level6">
    </div>
    <div class="slxq" id="level7">
    </div>
    <div class="slxq" id="level8">
    </div>
    

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
   
    
    var path="guohong";
    //var path="system";
    var last_index=2;
    $(function(){
    	 $("#arrow2").hide();
    })
    
    function add_child()
    {
    	 $(".contacts").mousemove(function(){
    	        $(this).children().css({color:"#00a0e9"}).find("li").css({color:"#00a0e9"});
    	        return false;
    	    }).mouseout(function(){
    	        $(this).children().css({color:"#999"}).find("li").css({color:"#666"});
    	    })	
    	
   
    
    $(".contacts").click(function(){
    	var temp=$(this).parent().parent().attr("id");
    	var prefix=temp.substr(0,temp.length-1)
    	var index=temp.substr(temp.length-1,temp.length)
    	
    	console.log(prefix);
    	console.log(index);
    	if(prefix=="level")
    		{
    		  if(index==last_index)
    		  {
    		  var i=parseInt(index)+1;
    		  var employee_id=$(this).attr("id");//点击人员id
    		  $(this).siblings().hide();
    		  var department_id=$(this).next().children("input[name='department_id']").val();
    		  console.log("department_id"+department_id);
    		  $("#title"+department_id).siblings().hide();
    		  console.log(department_id+"lllll");
    		  if($("#title"+department_id).attr("class")=="color0")
    			  {
    			    $(this).parent().prev().css({backgroundColor:"#cc0000"});
    			  }
    		  else
    			  {
    			    $(this).parent().prev().css({backgroundColor:"#00a0e9"});
    			    console.log('dfdfdfadfdafadfasfasfa');
    			  }
    		  
    		  
    		  htmlobj=$.ajax({url:"/"+path+"/contact/contact_child_check.do?employee_id="+employee_id+"&level="+i,async:false});
    		 
    		  
    		  $("#level"+i).html(htmlobj.responseText);
    		  
    		  
              console.log("last_index:"+last_index);
              //console.log("sddfdafa"+$(".is_empty").attr("id"));
              if($("input[name=is_empty"+i+"]").attr("value")=="1")
            	  {
            	   console.log("ddfdafadfdaeewrwww");
            	  }
              else
            	  {
            	  $("#arrow"+last_index).show();
            	  }
              
    		  $("#arrow"+(last_index+1)).hide();
    		  
    		  add_child();
    		  last_index=i;
    		  }
    		  else
      	    {
      	    	var m=parseInt(index)+1;
      	    	for(var i=m;i<=7;i++)
      	    		{
      	    		 if(i==m)
      	    		  {
      	    			var employee_id=$(this).attr("id");
      	    			 $("#level"+i).html(" ");
      	    			 htmlobj=$.ajax({url:"/"+path+"/contact/contact_child_check.do?employee_id="+employee_id+"&level="+i,async:false});
      	    			 console.log("times times times"+i)
      	     		     $("#level"+i).html(htmlobj.responseText);
      	    		  }
      	    		 else
      	    		  {
      	    		    $("#level"+i).html(" ");
      	    		  }
      	    		}
      	    	$("#arrow"+(last_index)).hide();
      	    	last_index=m;
      	    	add_child();
      	    	//console.log("teetsdfdfa"+last_index);
      	    }
    		}
    	    
    	
    });
    }
    
    add_child();
   
</script>
</body>
</html>