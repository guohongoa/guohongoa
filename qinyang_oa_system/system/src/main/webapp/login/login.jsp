<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>oa</title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
</head>
<body style="background-color: #e5e5e5;width: 100%;">
<div class="login">
    <!--左侧图标-->
    <div class="login_left">
        <img src="http://101.200.196.121:8080/oa/css/images/logoimg.png" alt=""/>
    </div>
    <!--右侧登录-->
    <div class="login_right">
        <h3>
            <img src="http://101.200.196.121:8080/oa/css/images/loginword.png"/>
        </h3>
        <div style="margin-left: -80px">
            <form action="../login.do" id="login" method="post">
                <div class="loginuser">
                    <label for="uname">手机号</label>
                    <input style="color: #666;border: 1px solid #999;border-radius: 3px" id="uname" type="text" name="employee_phone"/>
                </div>
                <div class="loginuser">
                    <label for="password">密码</label>
                    <input style="color: #666;border: 1px solid #999;border-radius: 3px" id="password" type="password" name="employee_password"/>
                </div>
                <div class="loginuser" style="margin-top: 10px">
                    <label></label>
                    <input id="login_btn" style="color:#fff;background-color:#cc0000;width: 200px;height: 30px;font-weight:normal;font-size:16px;font-family:'微软雅黑';border-radius: 3px;border: 1px solid #a30000" type="submit" name="login_btn" value="登录"/>
                </div>

            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</body>
</html>