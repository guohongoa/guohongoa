<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<a href="#panel-personal" data-toggle="tab">个人</a>
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
					<div class="tab-pane active" id="panel-personal">
					    <h3><a href="home/personal.jsp">登陆</a></h3>
					</div>
					<div class="tab-pane " id="panel-register">
						<h3><a href="home/register.jsp">注册</a></h3>
						<h3><a href="home/userinfo.jsp">管理用户信息</a></h3>
					</div>
					<div class="tab-pane" id="panel-mail">
					    <h3><a href="home/mail.jsp">发邮件</a></h3>
					</div>
					<div class="tab-pane" id="panel-task">
				 	    <h3><a href="home/task.jsp">发任务</a></h3>
					</div>
					<div class="tab-pane" id="panel-report">
				 	    <h3><a href="home/report.jsp">发汇报</a></h3>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>