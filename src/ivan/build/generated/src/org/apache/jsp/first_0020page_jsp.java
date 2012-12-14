package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class first_0020page_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>欢迎访问SMART_DDNS系统</title>\n");
      out.write("        <link href=\"inc/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script language=\"javascript\" src=\"inc/function.js\" ></script>\n");
      out.write("        <script language=\"javascript\" src=\"inc/time.js\" ></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"inc/build/yahoo/yahoo-min.js\" ></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"inc/build/event/event-min.js\" ></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"inc/build/dom/dom-min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"inc/build/dragdrop/dragdrop-debug.js\" ></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"inc/build/animation/animation-min.js\"></script>\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("            YAHOO.example.DDApp = function() {\n");
      out.write("                var dd;\n");
      out.write("                return {\n");
      out.write("                    init: function() {\n");
      out.write("                        dd= new YAHOO.util.DD(\"divbox\");\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }();\n");
      out.write("            YAHOO.util.Event.onDOMReady(YAHOO.example.DDApp.init);\n");
      out.write("\t\t\t\n");
      out.write("            function switchmenu()\n");
      out.write("            {\n");
      out.write("                var trmenu=document.getElementById(\"trmenu\");\n");
      out.write("                if(trmenu.style.display==\"table-cell\")\n");
      out.write("                {\n");
      out.write("                    var actionimg=document.getElementById(\"actionimg\");\n");
      out.write("                    actionimg.src=\"images/FOpen.gif\";\n");
      out.write("                    trmenu.style.display=\"none\";\n");
      out.write("                }else if(trmenu.style.display==\"none\")\n");
      out.write("                {\n");
      out.write("                    var actionimg=document.getElementById(\"actionimg\");\n");
      out.write("                    actionimg.src=\"images/FClose.gif\";\n");
      out.write("                    trmenu.style.display=\"table-cell\";\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body bottommargin=\"0\">\n");
      out.write("        <div id=\"bgdiv\" class=\"bgdiv\"></div>\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"block\" id=\"divbox\" style=\"position:absolute;display:none;z-index:2000;\">\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\" class=\"block-title\" id=\"divtitle\" style=\"float:left;font-size: 12px;\">&nbsp;</td>\n");
      out.write("                <td align=\"right\"><img src=\"images/close3.gif\" style=\"cursor:pointer\" width=\"20\" height=\"20\" onClick=\"disdivbox();\" >&nbsp;</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td width=\"1057\" colspan=\"3\" class=\"block-body\"> <iframe src='' id=\"contentframes\" name=\"contentframes\" frameborder='0'></iframe></td>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("<table width=\"100%\" height=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("    <tr>\n");
      out.write("        <td height=\"90\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"500\" height=\"60\" background=\"images/top.jpg\">&nbsp;</td>\n");
      out.write("                    <td align=\"right\" background=\"images/top.jpg\"><img src=\"images/home.jpg\" width=\"70\" height=\"50\" style=\"cursor:pointer;\" onClick=\"goiframes('main.html');\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"images/exit.jpg\" width=\"70\" height=\"50\" style=\"cursor:pointer;\" >&nbsp;</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td height=\"30\" colspan=\"2\" valign=\"middle\" background=\"images/por_bkg.gif\" ><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"bfont\">\n");
      out.write("                                    欢迎登录 当前时间&nbsp;</td>\n");
      out.write("                                <td  id=\"webjx\"  class=\"bfont\">&nbsp; </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table></td>\n");
      out.write("                </tr>\n");
      out.write("            </table></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><table width=\"100%\" height=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"174\" valign=\"top\" bgcolor=\"#CBE0FD\" id=\"trmenu\" style=\"display:table-cell;\"><table width=\"174\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                            <tr> \n");
      out.write("                                <td class=\"menu-toptit\">系统菜单</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td valign=\"top\" bgcolor=\"#FFFFFF\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"menu_item\"><a  onClick=\"goiframes('main.html');\">系统首页</a></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"menu_item\"><a  onClick=\"goiframes('newslist1.html');\">修改记录值</a></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                       \n");
      out.write("\t\t\t\t\t\t\t\t\t\t \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"menu_item\"><a  onClick=\"goiframes('');\">我的DNS记录</a></td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"menu_item\">退出系统</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td valign=\"top\"><img src=\"images/menu_bg_short.jpg\" width=\"174\" height=\"117\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table></td>\n");
      out.write("                    <td width=\"8\" align=\"center\" id=\"actiontr\" background=\"images/main_onoff_bg.jpg\" style=\"cursor:pointer;\" onClick=\"switchmenu();\"><img id=\"actionimg\" src=\"images/FClose.gif\" alt=\"\" width=\"8\" height=\"100\"  /></td>\n");
      out.write("                    <td valign=\"top\"><iframe src=\"\"  height=\"100%\" width=\"100%\"  name=\"mainiframes\" id=\"mainiframes\"  frameborder=\"0\" scrolling=\"auto\"></iframe></td>\n");
      out.write("    </tr>\n");
      out.write("</table></td>\n");
      out.write("</tr>\n");
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
