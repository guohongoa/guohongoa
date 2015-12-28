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
             <a class="login_admin">管理员登录<input name="is_admin" type="checkbox" value="1" form="login"></a>
            <div class="login-error"></div>
        </div>
    </c:when>
        <c:otherwise>
               <div class="menu">
                  <ul>
                     <li><a href="msg/check_unread_msg.do?employee_id=${user_id}&msg_page=1"><i class="icon icon_m"></i>消息</a></li>
                     <li><a href="setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                     <li><a href="logout"><i></i>退出</a></li>
                  </ul>
            </div>
        </c:otherwise>
        </c:choose>
    </div>
</div>
<!--主体-->
<!--section为主体容器-->
<c:choose>
 <c:when test="${not empty user_name}">
<div class="section clear">
    <!--section_content为内容主体全部内容-->
    <div class="section_content" >
        <!--第一行-->
        <div class="section_content_row">
            <!--第一行第一列 四联模块-->
            <div class="mokuai mokuail">
                <a class="mokuaitu" href="contact/contact_person_check.do?employee_id=${user_id}">
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
                <a class="mokuaitu" href="service/service_village_check.do">
                    <img src="http://101.200.196.121:8080/oa/css/images/wfw_05.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 法政法规服务<br/>
· 经济发展服务<br/>
· 和谐稳定服务<br/>
· 环境卫生服务<br>
· 文体活动服务<br>
                    </span>
                </a>
                <h4><a href="service/service_village_check.do" >五服务</a></h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu"  href="work/">
                    <img src="http://101.200.196.121:8080/oa/css/images/gz_07.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 工作任务<br/>
· 台账<br/>
· 五服务<br/>
                    </span>
                </a>
                <h4><a href="work/" >工作</a></h4>
            </div>
        </div>
        <!--第二行-->
        <div class="section_content_row">
            <div class="mokuai mokuail">
                <a class="mokuaitu" href="error.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/dyxx_12.jpg" alt=""/>
                </a>
                <h4><a href="error.jsp" >党员信息</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="error.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/zcfg_14.jpg" alt=""/>
                </a>
                <h4><a href="error.jsp" >政策法规</a></h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu" href="error.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/zxzx_03.jpg" alt=""/>
                </a>
                <h4><a href="error.jsp" >最新资讯</a></h4>
            </div>
        </div>
        <!--第三行-->
        <div class="section_content_row">
            <div class="mokuai mokuail">
                <a class="mokuaitu" href="error.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/jyms_07.jpg" alt=""/>
                </a>
                <h4><a href="error.jsp">嘉言民生</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="error.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/xzbg_09.jpg" alt=""/>
                </a>
                <h4><a href="error.jsp" >行政办公</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="error.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/hsjy_11.jpg" alt=""/>
                </a>
                <h4><a href="error.jsp">红色家园</a></h4>
            </div>
        </div>
    </div>
</div>
</c:when>
<c:otherwise>
  <div class="section clear">
    <!--section_content为内容主体全部内容-->
    <div class="section_content" >
        <!--第一行-->
        <div class="section_content_row">
            <!--第一行第一列 四联模块-->
            <div class="mokuai mokuail">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/sl_03.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 市委常委联系乡镇（办事处）党（工）委<br/>
· 乡镇（办事处）党员领导干部联系村级党组织<br/>
· 村（社区）党员干部联系党员<br/>
· 党员联系群众</span>
                </a>
                <h4><a href="login/login.jsp" >四联</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/wfw_05.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 法政法规服务<br/>
· 经济发展服务<br/>
· 和谐稳定服务<br/>
· 环境卫生服务<br>
· 文体活动服务<br>
                    </span>
                </a>
                <h4><a href="login/login.jsp" >五服务</a></h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu"  href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/gz_07.jpg" alt=""/>
                    <i style="display: none"></i>
                    <span style="display: none">· 工作任务<br/>
· 台账<br/>
· 五服务<br/>
                    </span>
                </a>
                <h4><a href="login/login.jsp" >工作</a></h4>
            </div>
        </div>
        <!--第二行-->
        <div class="section_content_row">
            <div class="mokuai mokuail">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/dyxx_12.jpg" alt=""/>
                </a>
                <h4><a href="login/login.jsp" >党员信息</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/zcfg_14.jpg" alt=""/>
                </a>
                <h4><a href="login/login.jsp" >政策法规</a></h4>
            </div>
            <div class="mokuai marginr">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/zxzx_03.jpg" alt=""/>
                </a>
                <h4><a href="login/login.jsp" >最新资讯</a></h4>
            </div>
        </div>
        <!--第三行-->
        <div class="section_content_row">
            <div class="mokuai mokuail">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/jyms_07.jpg" alt=""/>
                </a>
                <h4><a href="login/login.jsp">嘉言民生</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/xzbg_09.jpg" alt=""/>
                </a>
                <h4><a href="login/login.jsp" >行政办公</a></h4>
            </div>
            <div class="mokuai">
                <a class="mokuaitu" href="login/login.jsp">
                    <img src="http://101.200.196.121:8080/oa/css/images/hsjy_11.jpg" alt=""/>
                </a>
                <h4><a href="login/login.jsp">红色家园</a></h4>
            </div>
        </div>
    </div>
</div>

</c:otherwise>
</c:choose>
<br/><br/><br/><br/><br/>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
<script src="http://101.200.196.121:8080/oa/js/all.js"></script>
<script>
</script>
</body>
</html>


