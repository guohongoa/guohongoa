<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<body>
		<table border="1">
		    <tr><th>发送人</th><th></th>发送人id<th><th>接受人</th><th></th>接受人id<th><th>主题</th><th>内容</th><th>添加时间</th></tr>
			<c:forEach var="mail_info" items="${mail_info_list}">
				<tr>
				<td>${mail_info.get_mail_sender()}</td>
				<td>${mail_info.get_mail_sender_id()}</td>
				<td>${mail_info.get_mail_receiver()}</td>
				<td>${mail_info.get_mail_receiver_id()}</td>
				<td>${mail_info.get_mail_title()}</td>
				<td>${mail_info.get_mail_content()}</td>
				<td>${mail_info.get_mail_addtime()}</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>