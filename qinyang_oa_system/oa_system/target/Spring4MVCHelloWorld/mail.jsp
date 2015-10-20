<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="send_mail.do" method="post" id="mailform">
		<p>
			发送人：<input type="text" name="mail_sender" />
		</p>
		<p>
			接受人: <input type="text" name="mail_receiver" />
		</p>
		<p>
			标题：<input type="text" name="mail_title" />
		</p>
		<p>
			邮件内容：
			<textarea name="mail_content" cols="100" rows="10"></textarea>
			</textarea>
		</p>
		<input type="submit" value="发送" /> <input type="reset" value="重置">
	</form>
</body>
</html>