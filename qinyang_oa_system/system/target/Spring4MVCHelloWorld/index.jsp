<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>

	<center>
		<h3>
			<form action="main.do" method="post">
				<p>
					用户名: <input type="text" name="username" />
				</p>
				<p>
					密 码: <input type="password" name="password" />
				</p>
				<input type="submit" value="注册" /> <input type="reset" value="重置">
			</form>
		</h3>
	</center>
</body>
</html>
