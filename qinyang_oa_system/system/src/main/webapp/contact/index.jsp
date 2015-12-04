<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://101.200.196.121:8080/oa/css/all.css"/>
</head>
<body>
<!--header为导航容器-->
<div class="header">
    <!--头部header区域内容部分-->
    <div class="header_content">
        <!--左侧Logo及文字-->
        <div class="logo">
            <i></i>
            <span></span>
        </div>
        <!--右侧导航部分-->
        <div class="menu">
            <ul>
                <li><a href=""><i class="icon icon_m"><em>99</em></i>消息</a></li>
                <li><a href="../setting/check_personal.do?employee_id=${user_id}"><i class="icon"></i>设置</a></li>
                <li><a href="../logout"><i></i>退出</a></li>
            </ul>
            <div>
                <ul class="hide">
                    <li><a href="">你有<span>1</span>条工作提醒</a></li>
                    <li><a href="">你有<span>2</span>条服务提醒</a></li>
                    <li class="bordernone"><a href="">你有<span>3</span>条待审核记录</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--nav为导航条部分-->
<div class="nav">
    <ul>
        <li><a href="../" class="bordernone">首页</a></li>
        <li><a href="#" class="active" href="#">四联</a></li>
        <li><a href="../service/service_village_check.do">五服务</a></li>
        <li><a href="../work">工作</a></li>
        <li><a href="">嘉言民生</a></li>
        <li><a href="">政策法规</a></li>
        <li><a href="">最新资讯</a></li>
        <li><a href="">党员信息</a></li>
        <li><a href="">行政办公</a></li>
        <li><a href="">红色家园</a></li>
    </ul>
</div>
<!--主体-->
<div class="content">
    <div class="sili">
        <!--第一列-->
        <div class="silione">
            <span><a href="#"></a></span>  <!--添加联系人  -->
            <div class="swcw sili_content1">
                <h4> 党员群众服务中心<br>嘉言民生代办员</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list1}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">代办员1</a></li>
                                <li><a href="">代办员2</a></li>
                                <li><a href="">代办员3</a></li>
                                <li><a href="">代办员4</a></li>
                                <li><a href="">代办员5</a></li>
                                <li><a href="">代办员6</a></li>
                                <li><a href="">代办员7</a></li>
                                <li><a href="">代办员8</a></li>
                                <li><a href="">代办员9</a></li>
                                <li><a href="">代办员10</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">展开</a></p>
                    <i></i>
                </div>

            </div>
        </div>
        <!--第二列-->
        <div>
            <div class="swcw sili_content2">
                <h4>市委常委</h4>
                <div>
                    <ul>
                        <c:forEach var="contact_person_info" items="${contact_info_list2}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">常委</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <i></i>
                    <b></b>
                    <em></em>
                </div>

            </div>
            <div class="swcw sili_content3">
                <h4>乡镇办党（工）委</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list3}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">党员委</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <i></i>
                    <b></b>
                    <em></em>
                </div>

            </div>
            <div class="swcw sili_content4">
                <h4>农村（社区）党员干部</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list4}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">党员干部</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <b></b>
                    <em></em>
                    <i></i>
                    <sub></sub>
                    <sup></sup>

                </div>

            </div>
            <div class="swcw sili_content5">
                <h4>农村（社区）党员组织</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list5}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">党员</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <i></i>
                </div>
            </div>
            <div class="swcw sili_content6">
                <h4>群众</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list6}">
                           <li><a href="ccontact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">群众</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <i></i>
                    <b></b>
                </div>
            </div>
        </div>
        <!--第三列-->
        <div>
            <div class="swcw sili_content7">
                <h4>村民小组</h4>
               <div>
                   <ul>
                       <c:forEach var="contact_person_info" items="${contact_info_list7}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_contact_person_name()}</a></li>
                        </c:forEach>
                       <li class="pop">
                           <ul>
                               <li><a href="">小组</a></li>
                           </ul>
                           <p class="clear"><a href="" class="openclose">收起</a></p>
                       </li>
                   </ul>
                   <p class="clear"><a href="" class="closeopen">...展开</a></p>
               </div>
            </div>
        </div>
        <!--第四列-->
        <div>
            <div class="swcw sili_content8">
                <h4>市政府</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list8}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">市政府</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <i></i>
                </div>
            </div>
            <div class="swcw sili_content9">
                <h4>市职能部门</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list9}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">市职能</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                    <i></i>
                </div>
            </div>
            <div class="swcw sili_content10">
                <h4>乡镇办内设机<br>构和基层站所</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list10}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">乡镇办</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                </div>
            </div>

            <div class="swcw sili_content11">
                <h4>农村（社区）事物</h4>
                <div>
                    <ul>
                         <c:forEach var="contact_person_info" items="${contact_info_list11}">
                           <li><a href="contact_department_detail_check.do?employee_id=${contact_person_info.get_employee_id()}&contact_person_department_id=${contact_person_info.get_employee_department_id()}">${contact_person_info.get_employee_name()}</a></li>
                        </c:forEach>
                        <li class="pop">
                            <ul>
                                <li><a href="">党员</a></li>
                            </ul>
                            <p class="clear"><a href="" class="openclose">收起</a></p>
                        </li>
                    </ul>
                    <p class="clear"><a href="" class="closeopen">...展开</a></p>
                </div>
            </div>
        </div>

    </div>

</div>
<script src="http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js"></script>
<script src="http://101.200.196.121:8080/oa/js/style.js"></script>
</body>
</html>