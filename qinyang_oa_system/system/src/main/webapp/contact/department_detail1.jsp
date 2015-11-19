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
	$("h5").hide();
	
	$("div[id='node1']").show();//初始化只显示根结点，及其子结点
	$("div[id='node11']").show();
	$("div[id='node12']").show();
	$("div[id='node13']").show();
	$("div[id='node14']").show();
	
	$("h5[id='0']").show();
	$("h5[id='1']").show();
	
	
  $("div[id^='node']").click(function(){ //点击node结点
	  
    var id=$(this).attr("id"); //获取点击node结点的id
    var parent_id=id.substr(0,id.length-1);//获取父id
    
    /*隐藏所有其他同级部门*/
    $("div[id^='"+parent_id+"']").hide();
    $(this).show();
    $("#"+parent_id).show();
    
    //显示下一级结点
    $("div[id^='"+id+"']").each(function(){
    	if($(this).attr("id").length==id.length+1)
    		{
    		   $(this).show();
    		}
    	
    });
    
    $("h5[id='"+(id.length-4)+"']").show();
    
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
                <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href=""><i class="icon"></i>设置</a></li>
                <li><a href=""><i></i>退出</a></li>
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
    <h4><a href="">四联</a>&gt;<span>联系人详情</span></h4>
    <div class="slxq" style="margin-top: 20px">
        <h5 id="0">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list0}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 20px">
        <h5 id="1">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list1}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 20px">
        <h5 id="2">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list2}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 20px">
        <h5 id="3">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list3}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
     <div class="slxq" style="margin-top: 20px">
        <h5 id="4">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list4}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 20px">
        <h5 id="5">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list5}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 20px">
        <h5 id="6">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list6}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    
    <div class="slxq" style="margin-top: 20px">
        <h5 id="7">市委常委</h5>
        <div>
           <c:forEach var="contact_node" items="${contact_node_list7}"><!--将所有结点循环入列  -->
            <div class="contacts" id="${contact_node.get_contact_node_code()}">
                <ul>
                    <li>姓名：<span>A1</span></li>
                    <li>部门：<span>${contact_node.get_contact_person_department_name()}</span></li>
                    <li>职务：<span>职务</span></li>
                    <li>职责：<span>职责描述</span></li>
                    <li>电话：<span>1300000000</span></li>
                </ul>
                <p>制度：<span>制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述制度描述</span></p>
            </div>
            </c:forEach>
        </div>
    </div>
    

</div>
</body>
</html>