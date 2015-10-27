<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
</head>
<body>
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
                <li><a href="../index.html"><i class="icon"></i><span>退出</span></a></li>
                <li><a href="../sz/sz.html"><i class="icon_s icon"></i>设置</a></li>
                <li><a href="../xx/xx.html"><i class="icon_m icon"></i>消息</a></li>
                <li><a href="../kh/kh.html"><i class="icon_k icon"></i>考核</a></li>
                <li><a href="../tz/tz.html"><i class="icon_t icon"></i>台账</a></li>
                <li><a href="../gz/gz.html"><i class="icon_g icon"></i>工作</a></li>
                <li><a href="fza.html"><i></i>五服务</a></li>
                <li><a href="../sl/sl.html"><i class="icon_l icon"></i>四联</a></li>
            </ul>
        </div>
    </div>
</div>
<!--主体-->
<div class="m_content">
    <!--左侧导航-->
    <div class="left_menu">
        <h3>五服务</h3>
        <ul>
            <li><a  href="service_law_deploy.jsp">法政法规服务</a>
            </li>
            <li><a class='active' href="service_law_deploy.jsp">经济发展服务</a>
                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="service_economy_deploy.jsp" >安排</a><i></i></dd>
                    <dd><a href="#" class="activecolor">反馈</a></dd>
                </dl>
            </li>
            <li><a href="service_harmony_deploy.jsp">和谐稳定服务</a></li>
            <li><a href="service_environment_deploy.jsp">环境卫生服务</a></li>
            <li><a href="service_activity_deploy.jsp">文体活动服务</a></li>
            <li><a href="service_myservice_deploy.jsp">我的服务</a></li>
        </ul>
    </div>
    <!--右侧主要内容-->
    <div class="main">
        <div class="service">
            <h3>任务&gt;经济发展服务&gt;反馈服务</h3>

            <form id="servicego" action="send_service.do" method="post">
                <div>
                    <span class="serviceword">发送给</span>
                    <p class="serviceinput"><input type="text" name="service_receiver"/></p>
                </div>
                <div>
                    <span class="serviceword">服务主题</span>
                    <p class="serviceinput"><input type="text" name="service_theme"/></p>
                </div>
                <div>
                    <span class="serviceword">服务类型</span>
                    <p class="serviceinput disabled"><input id="type" type="text" value="经济发展服务" disabled /></p>
                </div>
                <div>
                    <span>要求执行周期&nbsp;<input class="timedata" type="text" name="service_begintime" />&nbsp;—&nbsp;<input class="timedata" type="text" name="service_endtime" /></span>
                </div>
                <div>
                    <p>内容描述</p><br/>
                    <p>
                        <textarea name="service_content"></textarea>
                    </p>
                </div>
                <!-- 隐藏发送信息 -->
                <input type="hidden" name="service_sender" value="user_name" />
				<input type="hidden" name="service_sender_id" value="123" />
                <input type="hidden" name="service_type" value="1" />      <!--经济发展服务为1-->
                <input type="hidden" name="service_category" value="1" />  <!--反馈为1-->
                <input type="hidden" name="service_receiver_id" value="456" />
                
                <input id="sericeone" type="submit" value="安排服务"/>
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js"></script>
<script src=""></script>
</body>
</html>