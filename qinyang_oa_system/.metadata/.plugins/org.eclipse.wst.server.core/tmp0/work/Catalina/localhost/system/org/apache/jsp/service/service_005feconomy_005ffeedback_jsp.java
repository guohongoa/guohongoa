/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.22
 * Generated at: 2015-10-28 03:37:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class service_005feconomy_005ffeedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head lang=\"en\">\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title></title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://101.200.196.121:8080/oa/css/all.css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"header\">\n");
      out.write("    <!--头部header区域-->\n");
      out.write("    <div class=\"h_content\">\n");
      out.write("        <!--左侧Logo及文字-->\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <i></i>\n");
      out.write("            <span></span>\n");
      out.write("        </div>\n");
      out.write("        <!--右侧导航部分-->\n");
      out.write("        <div class=\"menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"../index.html\"><i class=\"icon\"></i><span>退出</span></a></li>\n");
      out.write("                <li><a href=\"../sz/sz.html\"><i class=\"icon_s icon\"></i>设置</a></li>\n");
      out.write("                <li><a href=\"../xx/xx.html\"><i class=\"icon_m icon\"></i>消息</a></li>\n");
      out.write("                <li><a href=\"../kh/kh.html\"><i class=\"icon_k icon\"></i>考核</a></li>\n");
      out.write("                <li><a href=\"../tz/tz.html\"><i class=\"icon_t icon\"></i>台账</a></li>\n");
      out.write("                <li><a href=\"../gz/gz.html\"><i class=\"icon_g icon\"></i>工作</a></li>\n");
      out.write("                <li><a href=\"fza.html\"><i></i>五服务</a></li>\n");
      out.write("                <li><a href=\"../sl/sl.html\"><i class=\"icon_l icon\"></i>四联</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--主体-->\n");
      out.write("<div class=\"m_content\">\n");
      out.write("    <!--左侧导航-->\n");
      out.write("    <div class=\"left_menu\">\n");
      out.write("        <h3>五服务</h3>\n");
      out.write("        <ul>\n");
      out.write("            <li><a  href=\"service_law_deploy.jsp\">法政法规服务</a>\n");
      out.write("            </li>\n");
      out.write("            <li><a class='active' href=\"service_law_deploy.jsp\">经济发展服务</a>\n");
      out.write("                <dl>\n");
      out.write("                    <dt></dt>\n");
      out.write("                    <dd class=\"activea\"><a href=\"service_economy_deploy.jsp\" >安排</a><i></i></dd>\n");
      out.write("                    <dd><a href=\"#\" class=\"activecolor\">反馈</a></dd>\n");
      out.write("                </dl>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"service_harmony_deploy.jsp\">和谐稳定服务</a></li>\n");
      out.write("            <li><a href=\"service_environment_deploy.jsp\">环境卫生服务</a></li>\n");
      out.write("            <li><a href=\"service_activity_deploy.jsp\">文体活动服务</a></li>\n");
      out.write("            <li><a href=\"check_service_deploy_request.jsp\">我的服务</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <!--右侧主要内容-->\n");
      out.write("    <div class=\"main\">\n");
      out.write("        <div class=\"service\">\n");
      out.write("            <h3>任务&gt;经济发展服务&gt;反馈服务</h3>\n");
      out.write("\n");
      out.write("            <form id=\"servicego\" action=\"send_service.do\" method=\"post\">\n");
      out.write("                <div>\n");
      out.write("                    <span class=\"serviceword\">发送给</span>\n");
      out.write("                    <p class=\"serviceinput\"><input type=\"text\" name=\"service_receiver\"/></p>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <span class=\"serviceword\">服务主题</span>\n");
      out.write("                    <p class=\"serviceinput\"><input type=\"text\" name=\"service_theme\"/></p>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <span class=\"serviceword\">服务类型</span>\n");
      out.write("                    <p class=\"serviceinput disabled\"><input id=\"type\" type=\"text\" value=\"经济发展服务\" disabled /></p>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <span>要求执行周期&nbsp;<input class=\"timedata\" type=\"text\" name=\"service_begintime\" />&nbsp;—&nbsp;<input class=\"timedata\" type=\"text\" name=\"service_endtime\" /></span>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <p>内容描述</p><br/>\n");
      out.write("                    <p>\n");
      out.write("                        <textarea name=\"service_content\"></textarea>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <!-- 隐藏发送信息 -->\n");
      out.write("                <input type=\"hidden\" name=\"service_sender\" value=\"user_name\" />\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"service_sender_id\" value=\"123\" />\n");
      out.write("                <input type=\"hidden\" name=\"service_type\" value=\"1\" />      <!--经济发展服务为1-->\n");
      out.write("                <input type=\"hidden\" name=\"service_category\" value=\"1\" />  <!--反馈为1-->\n");
      out.write("                <input type=\"hidden\" name=\"service_receiver_id\" value=\"456\" />\n");
      out.write("                \n");
      out.write("                <input id=\"sericeone\" type=\"submit\" value=\"安排服务\"/>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<script src=\"http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js\"></script>\n");
      out.write("<script src=\"http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js\"></script>\n");
      out.write("<script src=\"\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
