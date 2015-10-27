<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
</head>
<body>
<c:choose>
<c:when test="${empty user_name}">
<div class="header">
    <!--头部header区域-->
    <div class="h_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class=" indexlogin">
            <form id="login" action="login.do" method="post">
                <i></i><lable for="">用户名&nbsp;</lable>
                <input id="uname" name="user_name" type="text"/>&nbsp;
                <i class="mimatu"></i><lable for="" >密码&nbsp;</lable>
                <input id="password" name="user_password" type="password"/>&nbsp;
                <input id="login_btn" type="submit" value="登录"/>
            </form>
            <div class="login-error"></div>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content index">
    <p class="shuoming">为进一步落实基层“四项基础制度”，加强基层组织建设，充分发挥各级党组织和党员干部作用，形成大抓党建工作合力，推进联系服务群众常态化、
        常效化，经研究，决定推行基层党建“四联五服务”工作机制。输入项目编号或申请人姓名，可查询项目详情。</p>
    <div class="indexcontent">
      <ul class="indexul1">
          <li class="indexli1">服务编号</li>
          <li class="indexli1">服务单位</li>
          <li class="indexli3">联系电话</li>
          <li class="indexli4">服务事项</li>
      </ul>
        <ul class="indexul2">
            <li class="indexli1">1</li>
            <li class="indexli1">党员服务</li>
            <li class="indexli3">13800000000</li>
            <li class="indexli4">
                <select>
                    <option>-请选择-</option>
                    <option>职业介绍</option>
                    <option>职业介绍</option>
                    <option>职业介绍职业介绍</option>
                </select>
            </li>
        </ul>
    </div>
    <div class="page spage">
        <a  href="" class="bulec">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">上一页</a>
        <a href="">下一页</a>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</c:when>
<c:otherwise>
    <c:redirect url="index1.jsp" />
</c:otherwise>
</c:choose>

</body>
</html>