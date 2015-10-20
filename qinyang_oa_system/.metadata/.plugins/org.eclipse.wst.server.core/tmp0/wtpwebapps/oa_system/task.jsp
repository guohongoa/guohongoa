<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/css/index.css"/>
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
                <li><a href="../login.html"><i class="icon"></i><span>退出</span></a></li>
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
    <!--左侧导航-->
    <div class="left_menu">
        <h3>五服务</h3>
        <ul>
            <li><a class='active'>法政法规服务</a>

                <dl>
                    <dt></dt>
                    <dd class="activea"><a href="" class="activecolor">安排</a><i></i></dd>
                    <dd><a href="">反馈</a></dd>
                </dl>

            </li>
            <li><a >经济发展服务</a>
                <dl class="pop">
                    <dt></dt>
                    <dd class="activea"><a href="">安排</a><i></i></dd>
                    <dd><a href="">反馈</a></dd>
                </dl>
            </li>
            <li><a >和谐稳定服务</a>
                <dl class="pop">
                    <dt></dt>
                    <dd class="activea"><a href="">安排</a><i></i></dd>
                    <dd><a href="">反馈</a></dd>
                </dl>
            </li>
            <li><a >环境卫生服务</a>
                <dl class="pop">
                    <dt></dt>
                    <dd class="activea"><a href="">安排</a><i></i></dd>
                    <dd><a href="">反馈</a></dd>
                </dl>
            </li>
            <li><a>文体活动服务</a>
                <dl class="pop">
                    <dt></dt>
                    <dd class="activea"><a href="">安排</a><i></i></dd>
                    <dd><a href="">反馈</a></dd>
                </dl>
            </li>
            <li><a >我的任务</a></li>
        </ul>
    </div>

    <!--右侧主要内容-->
    <div class="main">
        <div class="task">
            <h3>任务&gt;法政法规服务&gt;安排服务</h3>

            <form id="taskgo" action="send_service.do" method="post">
                <table>
                    <tr>
                        <td class="td1">发送给</td>
                        <td class="td2"><div><input type="text" name="service_receiver" /></div></td>
                    </tr>
                    <tr>
                        <td>服务主题</td>
                        <td class="td2"><div><input type="text" name="service_theme" /></div></td>
                    </tr>
                    <tr>
                        <td>服务类型</td>
                        <td class="disabled td2"><div><input id="type" type="text" value="法政法规服务" disabled /></div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">要求执行周期&nbsp;<input id="taskst" type="text" name="service_begintime" />&nbsp;—&nbsp;<input id="tasket" type="text" name="service_endtime"/></td>
                    </tr>
                    <tr>
                        <td>内容描述</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <textarea name="service_content"></textarea>
                        </td>
                    </tr>
                </table>
                <!-- 隐藏发送信息 -->
                <input type="hidden" name="service_sender" value="user_name" />
				<input type="hidden" name="service_sender_id" value="123" />
                <input type="hidden" name="service_type" value="0" />
                <input type="hidden" name="service_category" value="0" />
                <input type="hidden" name="service_receiver_id" value="456" />
                
                <input id="tasks" type="submit" value="安排服务"/>
                
            </form>
        </div>
    </div>
</div>
<script src="http://101.200.196.121:8080/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/js/My97DatePicker/WdatePicker.js"></script>
<script src="http://101.200.196.121:8080/js/index.js"></script>
</body>
</html>