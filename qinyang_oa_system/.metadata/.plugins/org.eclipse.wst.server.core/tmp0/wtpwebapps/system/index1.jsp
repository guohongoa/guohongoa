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
</head>
<body style="background-color: #e5e5e5">
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
                <li><a href="logout/index.jsp"><i class="icon"></i><span>退出</span></a></li>
                <li><a href="../sz/sz.html"><i class="icon_s icon"></i>设置</a></li>
                <li><a href="../xx/xx.html"><i class="icon_m icon"></i>消息</a></li>
                <li><a href="../kh/kh.html"><i class="icon_k icon"></i>考核</a></li>
                <li><a href="../tz/tz.html"><i class="icon_t icon"></i>台账</a></li>
                <li><a href="../gz/gz.html"><i class="icon_g icon"></i>工作</a></li>
                <li><a href="../wfw/fza.html"><i></i>五服务</a></li>
                <li><a href="../sl/sl.html"><i class="icon_l icon"></i>四联</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <div class="loginindex">
        <div class="mokuaione">
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/slt_03.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <a class="mokuaizi" >四联</a>
            </div>
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/wfwt_05.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4 class="mokuaizi" >五服务</h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/gzt_07.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4 class="mokuaizi" >工作</h4>
            </div>
        </div>
        <div class="mokuaione">
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/glb_12.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4 class="mokuaizi" >管理</h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/khb_13.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4 class="mokuaizi" >考核</h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/tzt_12.jpg" alt=""/>
                <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4 class="mokuaizi" >台帐</h4>
            </div>
        </div>

    </div>

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</c:when>
<c:otherwise>
    <c:redirect url="index2.jsp" />
</c:otherwise>
</c:choose>
</body>
</html>