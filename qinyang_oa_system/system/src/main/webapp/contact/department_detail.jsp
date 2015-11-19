<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js">
</script>
<script>
$(document).ready(function(){

	$("p[id^='node1']").hide();//隐藏所有
	
	$("p[id='node1']").show();//初始化只显示根结点，及其子结点
	$("p[id='node11']").show();
	$("p[id='node12']").show();
	$("p[id='node13']").show();
	$("p[id='node14']").show();
	
	
  $(".node").click(function(){ //点击node结点
	  
    var id=$(this).attr("id"); //获取点击node结点的id
    var parent_id=id.substr(0,id.length-1);//获取父id
    
    /*隐藏所有其他同级部门*/
    $("p[id^='"+parent_id+"']").hide();
    $(this).show();
    $("#"+parent_id).show();
    
    //显示下一级结点
    $("p[id^='"+id+"']").each(function(){
    	if($(this).attr("id").length==id.length+1)
    		{$(this).show();}
    	
    });
    
    
  });
  
  
});
</script>
</head>
<body>
<c:forEach var="contact_node" items="${contact_node_list}"><!--将所有结点循环入列  -->
    <p class="node" id="${contact_node.get_contact_node_code()}">${contact_node.get_contact_person_department_name()}</p>
</c:forEach>

</body>
</html>