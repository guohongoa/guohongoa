<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/index.css"/>
</head>
<body>
<c:choose>
<c:when test="${not empty user_name}">
<div class="header">
    <!--头部header区域-->
    <div class="h_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li> <form action="logout.do" method="post" name="form_logout">
                            <a href='javascript:document.form_logout.submit();'><font color='#000000'>
                            </font>
                           <i class="icon"></i><span>退出</span> </a>
                     </form>
                 </li>
                <li><a href=""><i class="icon_s icon"></i>设置</a></li>
                <li><a href=""><i class="icon_m icon"></i>消息</a></li>
                <li><a href=""><i class="icon_g icon"></i>管理</a></li>
                <li><a href=""><i></i>五服务</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
     <div class="m_content">
        <div class="main_page">
            <div class="pic1">
                <a href="">
                  <img border="0" src="http://101.200.196.121:8080/oa/css/img/img1.png" />
                 </a>
            </div>
            <div class="t1"><h3>四联</h3></div>

            <div class="pic2">
                <a href="service/service_input.jsp">
                  <img border="0" src="http://101.200.196.121:8080/oa/css/img/img2.png" />
                 </a>
            </div>
            <div class="t2"><h3>五服务</h3></div>

            <div class="pic3">
                <a href="">
                  <img border="0" src="http://101.200.196.121:8080/oa/css/img/img3.png" />
                 </a>
            </div>
            <div class="t3"><h3>工作</h3></div>

            <div class="pic4">
                <a href="">
                  <img border="0" src="http://101.200.196.121:8080/oa/css/img/img4.png" />
                 </a>
            </div>
            <div class="t4"><h3>管理</h3></div>

            <div class="pic5">
                <a href="">
                  <img border="0" src="http://101.200.196.121:8080/oa/css/img/img5.png" />
                 </a>
            </div>
            <div class="t5"><h3>考核</h3></div>

            <div class="pic6">
                <a href="">
                  <img border="0" src="http://101.200.196.121:8080/oa/css/img/img6.png" />
                 </a>
            </div>
            <div class="t6"><h3>台账</h3></div>

        </div>
     </div>

   
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/index.js"></script>
</c:when>
<c:otherwise>
    <c:redirect url="login" />
</c:otherwise>
</c:choose>

</body>
</html>