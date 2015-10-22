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


<c:choose>
<c:when test="${empty system_user_name}">
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
        <div>
            <form action="../login.do" id="login" method="post">
                <div class="loginuser">
                    <label for="uname">用户名</label>
                    <input id="uname" type="text" name="user_name"/>
                </div>
                <div class="loginuser">
                    <label for="password">密码</label>
                    <input id="password" type="password" name="user_password"/>
                </div>
                <div class="loginuser">
                    <label ></label>
                    <input id="login_btn" type="submit" name="login_btn" value="立即登录"/>
                </div>
                <div class="login-error"></div>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</body>
</c:when>
<c:otherwise>
  <body>
     aaa
  </body>
</c:otherwise>
</c:choose>

</html>