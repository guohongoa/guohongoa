<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务</title>
</head>
<body>
     <form action="../send_task.do" method="post" id="taskform">
			   <p><input type="hidden" name="task_sender" value="${system_user_name}"/></p>
			   <p><input type="hidden" name="task_sender_id" value="${system_user_id}"/></p>
               <p>任务执行人: <input type="text" name="task_receiver" /></p>
               <p>执行人id：<input type="text" name="task_receiver_id" /></p>
               <p>主题：<input type="text" name="task_title" /></p>
               <p>内容：<textarea name="task_content" cols="100" rows="10"></textarea></textarea></p>
      
                 <input type="submit" value="发送" /> 
                 <input type="reset" value="重置">
	 </form>
	  <a href="../index.jsp">返回首页</a>
</body>
</html>