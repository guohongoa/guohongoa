<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
    <!--判断是否登陆  -->
    
</head>
<body style="background-color: #e5e5e5"> 
<!--nav为导航容器-->
<div class="header">
    <!--头部导航nav区域内容部分-->
    <div class="header_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <c:choose>
        <c:when test="${empty user_name}">
           <div class="menu">
            <form id="login" action="login.do" method="post">
                <i></i><lable for="uname">手机号</lable>
                <input id="uname" class="input100" name="employee_phone" type="text"/>
                <i class="mimatu"></i><lable for="password" >密码</lable>
                <input id="password" class="input100" name="employee_password" type="password"/>&nbsp;
                <input id="login_btn"  type="submit" value="登录"/>
            </form>
            <a class="login_admin">管理员登录</a>
            <div class="login-error"></div>
          </div>
        </c:when>
        <c:otherwise>
               <div class="menu">
                  <ul>
                     <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                     <li><a href="setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                     <li><a href="logout"><i></i>退出</a></li>
                  </ul>
               <div>
                   <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>条待审核记录</a></li>
                   </ul>
               </div>
            </div>
        </c:otherwise>
        </c:choose>
    </div>
</div>
 
<!--主体-->
<!--section为主体容器-->
<div class="section clear">
    <!--section_content为内容主体全部内容-->
    <div class="section_content" >
        <!--第一行-->
        <div class="section_content_row">
            <!--第一行第一列 四联模块-->
            <div class="mokuai mokuail" >
                <a class="mokuaitu" href="contact/contact_person_check.do">
                    <img src="http://101.200.196.121:8080/oa/css/images/sl_03.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="contact/contact_person_check.do" >四联</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu"  href="service/service_village_check.do">
                    <img src="http://101.200.196.121:8080/oa/css/images/wfw_05.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="service/service_village_check.do" >五服务</a></h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu" href="work/">
                    <img src="http://101.200.196.121:8080/oa/css/images/gz_07.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="work/" >工作</a></h4>
            </div>
        </div>
        <!--第二行-->
        <div class="section_content_row">
            <div class="mokuai mokuail">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/dyxx_12.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="" >党员信息</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/zcfg_14.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="" >政策法规</a></h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/zxzx_03.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="" >最新资讯</a></h4>
            </div>
        </div>
        <!--第三行-->
        <div class="section_content_row">
            <div class="mokuai mokuail">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/jyms_07.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="" >嘉言民生</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/xzbg_09.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="" >行政办公</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu">
                    <img src="http://101.200.196.121:8080/oa/css/images/hsjy_11.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="" >红色家园</a></h4>
            </div>
        </div>
    </div>
</div>
<br/><br/><br/><br/><br/>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
</body>
</html>


