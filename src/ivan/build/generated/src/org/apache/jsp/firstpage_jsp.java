package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class firstpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("<title>欢迎访问SMART_DDNS系统</title>\n");
      out.write(" <style type=\"text/css\">\n");
      out.write("            td {\n");
      out.write("                margin-left: 2px;\n");
      out.write("                margin-top: 2px;\n");
      out.write("                margin-right: 2px;\n");
      out.write("                margin-bottom: 0px;\n");
      out.write("                font-family: \"宋体\";\n");
      out.write("                font-size: 12px;\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\tbackground-repeat: repeat-x;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"450\" align=\"center\"><img src=\"images/smart_ddns1.png\" width=\"728\" height=\"430\"></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("     <td align=\"center\" style=\"line-height:20px;\">雄鹰计划：SMART_DDNS &nbsp; &nbsp;设计开发：王根意、肖云龙、杜一凡<br>\n");
      out.write("开发时间：2012.12.16 &nbsp;&nbsp;　<br>\n");
      out.write("支持分辨率：1024*768~1366*768&nbsp;&nbsp;支持IE9.0+、Firefox5.0+、Chrome11.0+</td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
