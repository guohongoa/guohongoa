<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../send_service.do" method="post" id="serviceform">
		<p>
			<input type="hidden" name="service_sender"
				value="${system_user_name}" />
		</p>
		<p>
			<input type="hidden" name="service_sender_id"
				value="${system_user_id}" />
		</p>
		<p>
			发送给: <input type="text" name="service_receiver" />
		</p>
		<p>
			接受者id：<input type="text" name="service_receiver_id" />
		</p>
		<p>
			安排／反馈：<input type="radio" name="service_category" value="0" /> 安排 <input
				type="radio" name="service_category" value="1" /> 反馈
		</p>
		<p>
			服务类型：<input type="radio" name="service_type" value="0" /> 法政法规服务 <input
				type="radio" name="service_type" value="1" /> 经济发展服务 <input
				type="radio" name="service_type" value="2" /> 和谐稳定服务 <input
				type="radio" name="service_type" value="3" /> 环境卫生服务 <input
				type="radio" name="service_type" value="4" /> 文体活动服务
		</p>
		<p>
			服务开始时间: <input type="text" name="service_begintime" />
		</p>
		<p>
			服务结束时间: <input type="text" name="service_endtime" />
		</p>
		<p>
			服务主题：<input type="text" name="service_theme" />
		</p>
		<p>
			内容：
			<textarea name="service_content" cols="100" rows="10"></textarea>
			</textarea>
		</p>

		<input type="submit" value="发送" /> <input type="reset" value="重置">
	</form>
	<a href="../index.jsp">返回首页</a>
</body>
</html>