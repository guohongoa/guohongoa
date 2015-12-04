<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){

	$("div[id^='node1']").hide();//隐藏所有
	$("p[id^='node1']").hide();//隐藏所有
	
	//根结点class属性判断颜色
	if($("p[id='node1']").attr('class')==0)
		{
		 $("h5#0").css("background-color","#cc0000");
		}
	else
		{
		$("h5#0").css("background-color","#00a0e9");
		}
	
	//一级节点，子结点数及class属性判断颜色
	
    if($("div#level1.slxq p").length/2>1)
    	{
    	  $("h5#1").css("background-color","#cc0000");
    	}
    else if($("p[id='node11']").attr('class')==0)
       {
	      $("h5#1").css("background-color","#cc0000");
       }
    else
    	{
    	$("h5#1").css("background-color","#00a0e9");
    	}
	
    
	
	
	
	
	//$("h5").css("background-color","blue");
	
	
	$("div[id='node1']").show();//初始化只显示根结点，及其子结点
	$("p[id='node1']").css('display','inline');
	
	
	$("div[id='node11']").show();
	$("p[id='node11']").css('display','inline');
	
	$("div[id='node12']").show();
	$("p[id='node12']").css('display','inline');
	
	
	$("div[id='node13']").show();
	$("p[id='node13']").css('display','inline');
	
	$("div[id='node14']").show();
	$("p[id='node14']").css('display','inline');
	
	$("div#level2.slxq").css('display','none');
	$("div#level3.slxq").css('display','none');
	$("div#level4.slxq").css('display','none');
	$("div#level5.slxq").css('display','none');
	$("div#level6.slxq").css('display','none');
	$("div#level7.slxq").css('display','none');
	
	$("i[id='array1']").css('display','none');
	
	
  $("div[id^='node']").click(function(){ //点击node结点
	  
    var id=$(this).attr("id"); //获取点击node结点的id
    var parent_id=id.substr(0,id.length-1);//获取父id
    
    
    
    
    
    /*隐藏所有其他同级部门*/
    $("div[id^='"+parent_id+"']").hide();
    $(this).show();
    $("div[id='"+parent_id+"']").show();
    
    $("p[id^='"+parent_id+"']").hide();
    $("p[id^='"+id+"']").css('display','inline');
    $("p[id='"+parent_id+"']").css('display','inline');
    
   
    
    
    //显示下一级结点
    $("div[id^='"+id+"']").each(function(){
    	if($(this).attr("id").length==id.length+1)
    		{
    		   $(this).show();
    		}
    	
    	
    });
    $("div[id='level"+(id.length-4)+"']").show();
    
    $("i#array"+(id.length-5)).css('display','block');
    $("i#array"+(id.length-4)).css('display','none');
    
    
    
    if($("p[id='"+id+"']").attr('class')==0)
    	{
    	 $("h5#"+(id.length-5)).css("background-color","#cc0000");
    	}
    else
    	{
    	 $("h5#"+(id.length-5)).css("background-color","#00a0e9");
    	}
    
   var child_len=$("p[id='"+id+"1']").length+$("p[id='"+id+"2']").length+$("p[id='"+id+"3']").length+$("p[id='"+id+"4']").length
    
   if(child_len>1)
	   {
	   $("h5#"+(id.length-4)).css("background-color","#cc0000");
	   }
   else if($("p[id='"+id+"1']").attr('class')==0)
       {
	   $("h5#"+(id.length-4)).css("background-color","#cc0000");
       }
   else
	   {
	   $("h5#"+(id.length-4)).css("background-color","#00a0e9");
	   }
    
	
    
  });
  
  //悬浮变色
  $(".contacts").mousemove(function(){
      $(this).children().css({color:"#00a0e9"}).find("li").css({color:"#00a0e9"});
      return false;
  }).mouseout(function(){
      $(this).children().css({color:"#999"}).find("li").css({color:"#666"});
  })
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
                <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>条待审核记录</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="../contact/" class="active">四联</a></li>
        <li><a href="../service/">五服务</a></li>
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
    <h4><a href="contact_person_check.do">四联</a>&gt;<span>联系人详情</span></h4>
    <div class="slxq" style="margin-top: 20px" id="level0">
            <h5 id="0" >
            <c:forEach var="contact_node" items="${contact_node_list0}" varStatus="status">
               <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                   ${contact_node.get_contact_person_department_name()}
               </p>
             </c:forEach>
            </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list0}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array0"></i>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 50px" id="level1">
        <h5 id="1">
           <c:forEach var="contact_node" items="${contact_node_list1}" varStatus="status">
                <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                   ${contact_node.get_contact_person_department_name()}
                </p>
            </c:forEach>
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list1}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                 <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array1"></i>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 50px" id="level2">
        <h5 id="2">
           <c:forEach var="contact_node" items="${contact_node_list2}" varStatus="status">
               <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                ${contact_node.get_contact_person_department_name()}
               </p>
            </c:forEach>
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list2}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array2"></i>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 50px" id="level3">
        <h5 id="3">
            <c:forEach var="contact_node" items="${contact_node_list3}" varStatus="status">
              <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                ${contact_node.get_contact_person_department_name()}
              </p>
            </c:forEach>   
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list3}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array3"></i>
        </div>
    </div>
    
     <div class="slxq" style="margin-top: 50px" id="level4">
        <h5 id="4">
           <c:forEach var="contact_node" items="${contact_node_list4}" varStatus="status">
               <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                ${contact_node.get_contact_person_department_name()}
               </p>
            </c:forEach>  
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list4}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                 <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array4"></i>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 50px" id="level5">
        <h5 id="5" >
          <c:forEach var="contact_node" items="${contact_node_list5}" varStatus="status">
               <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                  ${contact_node.get_contact_person_department_name()}
               </p>
            </c:forEach>  
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list5}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array5"></i>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 50px" id="level6">
        <h5 id="6">
           <c:forEach var="contact_node" items="${contact_node_list6}" varStatus="status">
                <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                  ${contact_node.get_contact_person_department_name()}
                </p>
            </c:forEach>  
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list6}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                 <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
            <i id="array6"></i>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 50px" id="level7">
        <h5 id="7">
        <c:forEach var="contact_node" items="${contact_node_list7}"  varStatus="status">
              <p id="${contact_node.get_contact_node_code()}" class="${contact_node.get_contact_person_department_type()}">
                ${contact_node.get_contact_person_department_name()}
              </p>
         </c:forEach>  
        
        </h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list7}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>${contact_node.get_contact_person_name()}</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>${contact_node.get_contact_person_position()}</span></li>
                    <li>职责：<span>${contact_node.get_contact_person_duty()}</span></li>
                    <li>电话：<span>${contact_node.get_contact_person_phone()}</span></li>
                </ul>
                <p>制度：<span>${contact_node.get_contact_person_regulation()}</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    

</div>
</body>
</html>