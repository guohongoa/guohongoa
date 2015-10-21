<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<body>
	<table border="1">
		<tr>
			<th>汇报发起人</th>
			<th>发起人id</th>
			<th>汇报接受人</th>
			<th>接受人id</th>
			<th>汇报主题</th>
			<th>汇报内容</th>
			<th>添加时间</th>
		</tr>
		<c:forEach var="report_info" items="${report_info_list}">
			<tr>
				<td>${report_info.get_report_sender()}</td>
				<td>${report_info.get_report_sender_id()}</td>
				<td>${report_info.get_report_receiver()}</td>
				<td>${report_info.get_report_receiver_id()}</td>
				<td>${report_info.get_report_title()}</td>
				<td>${report_info.get_report_content()}</td>
				<td>${report_info.get_report_addtime()}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="index.jsp">返回首页</a>
</body>
</html>