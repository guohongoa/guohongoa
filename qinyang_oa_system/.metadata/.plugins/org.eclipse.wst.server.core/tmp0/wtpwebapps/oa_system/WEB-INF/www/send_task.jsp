<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<body>
		<table border="1">
		    <tr><th>任务发起人</th><th>发起人id</th><th>任务执行人</th><th>执行人id</th><th>任务主题</th><th>任务内容</th><th>任务状态</th><th>添加时间</th></tr>
			<c:forEach var="task_info" items="${task_info_list}">
				<tr>
				<td>${task_info.get_task_sender()}</td>
				<td>${task_info.get_task_sender_id()}</td>
				<td>${task_info.get_task_receiver()}</td>
				<td>${task_info.get_task_receiver_id()}</td>
				<td>${task_info.get_task_title()}</td>
				<td>${task_info.get_task_content()}</td>
				<td>${task_info.get_task_status()}</td>
				<td>${task_info.get_task_addtime()}</td>
				</tr>
			</c:forEach>
		</table>
		<a href="index.jsp">返回首页</a>
</body>
</html>