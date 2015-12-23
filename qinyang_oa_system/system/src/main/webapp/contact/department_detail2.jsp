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
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
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
        <li><a href="" class="bordernone">首页</a></li>
        <li><a href="" class="active">四联</a></li>
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
    <h4 style="font-weight: normal"><a href="">四联</a>&gt;<span>联系人详情</span></h4>
    <div class="slxq" style="margin-top: 20px" id="level1">
        <h5 style="font-weight: normal">${owner_info.get_employee_department_name()}</h5>
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
            <i></i>
        </div>
    </div>
    <div class="slxq" id="level2">
        <h5 class="bulec" style="font-weight: normal">
        <c:forEach var="department_info" items="${department_list}">
             ${department_info.get_department_name()}
             &nbsp;
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
             </c:forEach>
        </div>
    </div>
    
    <div class="slxq" id="level3">
    </div>
    <div class="slxq" id="level4">
    </div>
    

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script>
   
    
    //var path="guohong";
    var path="system";
    var last_index=2;
    function add_child()
    {
    	 $(".contacts").mousemove(function(){
    	        $(this).children().css({color:"#00a0e9"}).find("li").css({color:"#00a0e9"});
    	        return false;
    	    }).mouseout(function(){
    	        $(this).children().css({color:"#999"}).find("li").css({color:"#666"});
    	    })	
    	
    	
    $(".contacts").click(function(){
    	console.log();
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
    		  htmlobj=$.ajax({url:"/"+path+"/contact/contact_child_check.do?employee_id="+employee_id,async:false});
    		  $("#level"+i).html(htmlobj.responseText);
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
      	    		  console.log("tttttt"+employee_id);
      	    			 $("#level"+i).html(" ");
      	    			 htmlobj=$.ajax({url:"/"+path+"/contact/contact_child_check.do?employee_id="+employee_id,async:false});
      	     		     $("#level"+i).html(htmlobj.responseText);
      	    			 
      	    		  }
      	    		 else
      	    		  {
      	    		    $("#level"+i).html(" ");
      	    		  }
      	    		}
      	    	add_child();
      	    	last_index=m;
      	    	console.log("teetsdfdfa"+last_index);
      	    	
      	    }
    		}
    	    
    	
    });
    }
    
    add_child();
   
</script>
</body>
</html>