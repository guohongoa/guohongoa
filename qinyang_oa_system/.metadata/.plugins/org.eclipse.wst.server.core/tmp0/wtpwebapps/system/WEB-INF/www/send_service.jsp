<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<body>
	<table border="1">
		<tr>
			<th>服务消息id</th>
			<th>安排／反馈</th>
			<th>服务主题</th>
			<th>服务类型</th>
			<th>服务发送人id</th>
			<th>服务发送人</th>
			<th>服务信息接收人id</th>
			<th>服务信息接收人</th>
			<th>服务发送时间</th>
			<th>服务开始时间</th>
			<th>服务截至时间</th>
			<th>服务的内容</th>
		</tr>
		<c:forEach var="service_info" items="${service_info_list}">
			<tr>
				<td>${service_info.get_service_msgid()}</td>
				<td>${service_info.get_service_category()}</td>
				<td>${service_info.get_service_theme()}</td>
				<td>${service_info.get_service_type()}</td>
				<td>${service_info.get_service_sender_id()}</td>
				<td>${service_info.get_service_sender()}</td>
				<td>${service_info.get_service_receiver_id()}</td>
				<td>${service_info.get_service_receiver()}</td>
				<td>${service_info.get_service_addtime()}</td>
				<td>${service_info.get_service_begintime()}</td>
				<td>${service_info.get_service_endtime()}</td>
				<td>${service_info.get_service_content()}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="index.jsp">返回首页</a>
</body>
</html>