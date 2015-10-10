<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>
 
	<center>
		<h3>
			<!--<a href="hello?name=Eric">Click Here</a>  -->
			<form action="hello.do" method="post">
			   <p>username: <input type="text" name="username" /></p>
               <p>password: <input type="password" name="password" /></p>
               submit <input type="submit" value="Submit" /> 
               cancel <input type="reset" value="Cancel">
			</form>
		</h3>
	</center>
</body>
</html>
