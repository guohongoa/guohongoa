/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.22
 * Generated at: 2015-10-26 05:35:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.management;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class project_005finput1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                <li><a href=\"../wfw/fza.html\"><i></i>五服务</a></li>\n");
      out.write("                <li><a href=\"../sl/sl.html\"><i class=\"icon_l icon\"></i>四联</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--主体-->\n");
      out.write("<div class=\"m_content\">\n");
      out.write("    <!--左侧导航-->\n");
      out.write("    <div class=\"left_menu xiangmu\">\n");
      out.write("        <h3>管理</h3>\n");
      out.write("        <ul>\n");
      out.write("            <li><a class='active' href=\"\">项目管理</a>\n");
      out.write("                <dl>\n");
      out.write("                    <dt></dt>\n");
      out.write("                    <dd class=\"activea\"><a href=\"#\" class=\"activecolor\">添加项目</a><i></i></dd>\n");
      out.write("                    <dd><a href=\"\">已审批</a></dd>\n");
      out.write("                    <dd><a href=\"\">待审批</a></dd>\n");
      out.write("                    <dd><a href=\"\">未通过</a></dd>\n");
      out.write("                    <dd><a href=\"\">审批项目</a></dd>\n");
      out.write("                </dl>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"bmgl.html\"> 部门管理</a></li>\n");
      out.write("            <li><a href=\"rygltj.html\">人员管理</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <!--右侧主要内容-->\n");
      out.write("    <div class=\"main\">\n");
      out.write("        <div class=\"xmgl\">\n");
      out.write("            <h3><a href=\"\" class=\"gray\">管理</a> &gt;<a href=\"\" class=\"gray\">项目管理</a></h3>\n");
      out.write("            <div class=\"xmgltj\">\n");
      out.write("                <form action=\"\">\n");
      out.write("                    <span>项目管理&nbsp;<input type=\"text\"></span>\n");
      out.write("                    <span>项目名称&nbsp;<input type=\"text\"></span>\n");
      out.write("                    <input class=\"bulec inputnone\" type=\"button\" value=\"查找\"/>\n");
      out.write("                    <input class=\"bulec inputnone\" type=\"button\" value=\"添加项目\"/>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tjglcontent\">\n");
      out.write("                <ul class=\"tjglcontentt\">\n");
      out.write("                    <li>项目编号</li>\n");
      out.write("                    <li>项目名称</li>\n");
      out.write("                    <li style=\"line-height: 23px\">提交人/<br/>审批人</li>\n");
      out.write("                    <li>负责人</li>\n");
      out.write("                    <li>负责部门</li>\n");
      out.write("                    <li>发送时间</li>\n");
      out.write("                    <li>状态</li>\n");
      out.write("                    <li>内容</li>\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"tjglcontentc\">\n");
      out.write("                    <li>1</li>\n");
      out.write("                    <li>打井</li>\n");
      out.write("                    <li>王某</li>\n");
      out.write("                    <li>刘某</li>\n");
      out.write("                    <li>水利部</li>\n");
      out.write("                    <li>2015.10.10</li>\n");
      out.write("                    <li><select>\n");
      out.write("                        <option>请选择</option>\n");
      out.write("                        <option>已审批</option>\n");
      out.write("                        <option>待审批</option>\n");
      out.write("                        <option>未通过</option>\n");
      out.write("                    </select></li>\n");
      out.write("                    <li><a href=\"\" class=\"bulec\">详细</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"tjglcontentc\">\n");
      out.write("                    <li>2</li>\n");
      out.write("                    <li>打井</li>\n");
      out.write("                    <li>王某</li>\n");
      out.write("                    <li>刘某</li>\n");
      out.write("                    <li>水利部</li>\n");
      out.write("                    <li>2015.10.10</li>\n");
      out.write("                    <li><select>\n");
      out.write("                        <option>请选择</option>\n");
      out.write("                        <option>已审批</option>\n");
      out.write("                        <option>待审批</option>\n");
      out.write("                        <option>未通过</option>\n");
      out.write("                    </select></li>\n");
      out.write("                    <li><a href=\"\" class=\"bulec\">详细</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"page\">\n");
      out.write("            <a  href=\"\" class=\"bulec\">1</a>\n");
      out.write("            <a href=\"\">2</a>\n");
      out.write("            <a href=\"\">3</a>\n");
      out.write("            <a href=\"\">4</a>\n");
      out.write("            <a href=\"\">5</a>\n");
      out.write("            <a href=\"\">6</a>\n");
      out.write("            <a href=\"\">上一页</a>\n");
      out.write("            <a href=\"\">下一页</a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"http://101.200.196.121:8080/oa/js/jquery-1.11.3.min.js\"></script>\n");
      out.write("    <script src=\"http://101.200.196.121:8080/oa/js/My97DatePicker/WdatePicker.js\"></script>\n");
      out.write("    <script src=\"\"></script>\n");
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
