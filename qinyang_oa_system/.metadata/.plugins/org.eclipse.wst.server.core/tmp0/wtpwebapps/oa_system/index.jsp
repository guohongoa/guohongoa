<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
<link href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="tabbable" id="tabs-105576">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="#panel-login" data-toggle="tab">个人</a>
					</li>
					<li>
						<a href="#panel-register" data-toggle="tab">后台</a>
					</li>
					<li>
						<a href="#panel-mail" data-toggle="tab">邮件</a>
					</li>
					<li>
					    <a href="#panel-task" data-toggle="tab">任务</a>
					</li>
					<li>
					    <a href="#panel-report" data-toggle="tab">汇报</a>
					</li>
					
					
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-login">
					    <c:set var="username" scope="session" value="${username}"/>
					    <c:choose>
					    <c:when test="${empty username}">
						   <table border="0">
							 <form action="login.do" method="post">
			                    <tr><td width="20%">用户名</td><td><input type="text" name="username" /></td></tr>
                                <tr><td width="20%">密  码</td><td><input type="password" name="password" /></td></tr>
                                <tr><td colspan="2" align="center"><input type="submit" value="登陆" />&nbsp;&nbsp;<input type="reset" value="重置"></td></tr>
			                </form>
						    </table>
						</c:when>
						<c:otherwise>
						<h2>${username}</h2>
						   <a href="logout.jsp">用户登出</a>
						</c:otherwise>
						</c:choose>
						
					</div>
					<div class="tab-pane " id="panel-register">
						<table border="0">
							<form action="register.do" method="post">
			                  <tr><td width="20%">用户名</td><td><input type="text" name="username" /></td></tr>
                              <tr><td width="20%">密  码</td><td><input type="password" name="password" /></td></tr>
                              <tr><td colspan="2" align="center"><input type="submit" value="添加用户" />&nbsp;&nbsp;<input type="reset" value="重置"></td></tr>
			                </form>
						</table>
					</div>
					<div class="tab-pane" id="panel-mail">
					    <h2><a href="mail.jsp">发邮件</a></h2>
					</div>
					<div class="tab-pane" id="panel-task">
				 	    <h2><a href="task.jsp">发任务</a></h2>
					</div>
					<div class="tab-pane" id="panel-report">
				 	    <h2><a href="report.jsp">发汇报</a></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>