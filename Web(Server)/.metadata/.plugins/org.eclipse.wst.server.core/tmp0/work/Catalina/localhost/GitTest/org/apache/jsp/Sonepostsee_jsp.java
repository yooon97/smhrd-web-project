/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-05-25 08:45:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.smhrd.domain.Post;
import com.smhrd.domain.Follow;
import com.smhrd.domain.Marker;
import com.smhrd.domain.MarkerDAO;
import org.apache.ibatis.reflection.SystemMetaObject;
import com.smhrd.domain.Member;
import java.util.List;
import com.smhrd.domain.MemberDAO;

public final class Sonepostsee_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/smhrd/Desktop/윤/Web(Server)/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/GitTest/WEB-INF/lib/standard-1.1.2.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/WEB-INF/lib/standard-1.1.2.jar", Long.valueOf(1651644713468L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.smhrd.domain.Marker");
    _jspx_imports_classes.add("org.apache.ibatis.reflection.SystemMetaObject");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.smhrd.domain.MemberDAO");
    _jspx_imports_classes.add("com.smhrd.domain.Member");
    _jspx_imports_classes.add("com.smhrd.domain.Follow");
    _jspx_imports_classes.add("com.smhrd.domain.Post");
    _jspx_imports_classes.add("com.smhrd.domain.MarkerDAO");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<!--[if lt IE 7]>      <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\" lang=\"\"> <![endif]-->\r\n");
      out.write("<!--[if IE 7]>         <html class=\"no-js lt-ie9 lt-ie8\" lang=\"\"> <![endif]-->\r\n");
      out.write("<!--[if IE 8]>         <html class=\"no-js lt-ie9\" lang=\"\"> <![endif]-->\r\n");
      out.write("<!--[if gt IE 8]><!-->\r\n");
      out.write("<html class=\"no-js\" lang=\"\">\r\n");
      out.write("<!--<![endif]-->\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
      out.write("<title>봄이 오겠조</title>\r\n");
      out.write("<meta name=\"description\" content=\"\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/newposting.css\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/iconfont.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/slick/slick.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/slick/slick-theme.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/stylesheet.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/jquery.fancybox.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/bootstrap.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/magnific-popup.css\">\r\n");
      out.write("<!--        <link rel=\"stylesheet\" href=\"assets/css/bootstrap-theme.min.css\">-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--For Plugins external css-->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/plugins.css\" />\r\n");
      out.write("\r\n");
      out.write("<!--Theme custom css -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/style.css\">\r\n");
      out.write("\r\n");
      out.write("<!--Theme Responsive css-->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/responsive.css\" />\r\n");
      out.write("\r\n");
      out.write("<script src=\"assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body data-spy=\"scroll\" data-target=\".navbar-collapse\">\r\n");
      out.write("  ");

  Member dto = (Member) session.getAttribute("loginMember");

  String id = (String) session.getAttribute("user_id");
  
  List<Post> onepostList = (List)session.getAttribute("onepostList");
  
      out.write("\r\n");
      out.write("  <div class='preloader'>\r\n");
      out.write("    <div class='loaded'>&nbsp;</div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"culmn\">\r\n");
      out.write("    <header id=\"main_menu\" class=\"header navbar-fixed-top\">\r\n");
      out.write("      <div class=\"main_menu_bg\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"nave_menu\">\r\n");
      out.write("              <nav class=\"navbar navbar-default\">\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("                  <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("                  <div class=\"navbar-header\">\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\"\r\n");
      out.write("                      data-toggle=\"collapse\"\r\n");
      out.write("                      data-target=\"#bs-example-navbar-collapse-1\"\r\n");
      out.write("                      aria-expanded=\"false\">\r\n");
      out.write("                      <span class=\"sr-only\">Toggle navigation</span> <span\r\n");
      out.write("                        class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("                        class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"SMain.jsp\"> <img\r\n");
      out.write("                      src=\"assets/images/logo.png\" />\r\n");
      out.write("                    </a>\r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"collapse navbar-collapse\"\r\n");
      out.write("                    id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("\r\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                      <li><a href=\"SMain.jsp\">HOME</a></li>\r\n");
      out.write("                      <!-- <li><a href=\"#history\">ABOUT US</a></li>\r\n");
      out.write("                                                <li><a href=\"#portfolio\">PORTFOLIO</a></li>\r\n");
      out.write("                                                <li><a href=\"#pricing\">PRICING</a></li>\r\n");
      out.write("                                                <li><a href=\"#team\">TEAM</a></li>\r\n");
      out.write("                                                <li><a href=\"#blog\">BLOG</a></li>\r\n");
      out.write("                                                <li><a href=\"#contact\">CONTACT</a></li> -->\r\n");
      out.write("                               ");

                      if (dto == null) {
                      
      out.write("\r\n");
      out.write("                      <li><a href=\"NewLogin.html\">Login</a></li>\r\n");
      out.write("                      <li><a href=\"#\" id=\"nologinMyhome\">Myhome</a></li>\r\n");
      out.write("                      <li><a href=\"#\" id=\"nologinpost\">post</a></li>\r\n");
      out.write("                      ");

                      } else {
                      
      out.write("\r\n");
      out.write("                      <li><a href=\"Logout\">Logout</a></li>\r\n");
      out.write("                      <li><a href=\"Smyhome.jsp\">Myhome</a></li>\r\n");
      out.write("                      <li><a href=\"Spost.jsp\">post</a></li>\r\n");
      out.write("                      <li><a href=\"Sprofileselect\">Profile</a></li>\r\n");
      out.write("                      ");

                      }
                      
      out.write("\r\n");
      out.write("                      <li><a href=\"Sfollow.jsp\">Follow</a></li>\r\n");
      out.write("                      \r\n");
      out.write("                    </ul>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("              </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <!--End of header -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!--home Section -->\r\n");
      out.write("    <section id=\"home\" class=\"home\">\r\n");
      out.write("      <div class=\"overlay\">\r\n");
      out.write("        <div class=\"home_skew_border\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-12 \">\r\n");
      out.write("                <div class=\"main_home_slider text-center\">\r\n");
      out.write("                  <div class=\"single_home_slider\">\r\n");
      out.write("                    <div class=\"main_home wow fadeInUp\" data-wow-duration=\"700ms\">\r\n");
      out.write("                      <h3>who are you, I'm</h3>\r\n");
      out.write("                      <h1>Traveler</h1>\r\n");
      out.write("                      <div class=\"separator\"></div>\r\n");
      out.write("                      <p>지도기반 내 발자취 기록 서비스입니다.</p>\r\n");
      out.write("                      <div class=\"home_btn\">\r\n");
      out.write("                        <a href=\"SMain.jsp\" class=\"btn btn-lg m_t_10\">메인화면</a>\r\n");
      out.write("                      </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"single_home_slider\">\r\n");
      out.write("                    <div class=\"main_home wow fadeInUp\" data-wow-duration=\"700ms\">\r\n");
      out.write("                      <h3>두번째 공지</h3>\r\n");
      out.write("                      <h1>두번째 공지하기</h1>\r\n");
      out.write("                      <div class=\"separator\"></div>\r\n");
      out.write("                      <p>안녕하세요 테스트중입니당 ㅎㅎ</p>\r\n");
      out.write("                      <div class=\"home_btn\">\r\n");
      out.write("                        <a href=\"#\" class=\"btn btn-lg m_t_10\">메인으로 가기</a> <a\r\n");
      out.write("                          href=\"#history\" class=\"btn btn-default\">서비스 소개</a>\r\n");
      out.write("                      </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"scrooldown\">\r\n");
      out.write("            <a href=\"#feature\"><i class=\"fa fa-arrow-down\"></i></a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("    <section id=\"contact\" class=\"contact\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-sm-12\">\r\n");
      out.write("            <div class=\"contact_contant sections\">\r\n");
      out.write("              <div class=\"head_title text-center\">\r\n");
      out.write("                <h2>게시글수정페이지</h2>\r\n");
      out.write("                <div class=\"subtitle\">\r\n");
      out.write("                <span>");
      out.print(onepostList.get(0).getUser_id() );
      out.write("님 환영합니다.</span></div>\r\n");
      out.write("                <div class=\"separator\"></div>\r\n");
      out.write("                 <section class=\"container3\">\r\n");
      out.write("                                <article class=\"half\">\r\n");
      out.write("                                      <h1>회원수정</h1>\r\n");
      out.write("                                      <div class=\"tabs\">\r\n");
      out.write("                                            <span class=\"tab signin active\"><a href=\"#signin\">ㅤㅤ글제목ㅤㅤ</a></span>\r\n");
      out.write("                                      </div>\r\n");
      out.write("                                      <div class=\"content\">\r\n");
      out.write("                                            <div class=\"signin-cont cont\">\r\n");
      out.write("                                                  <form action=\"spostupdate\" method=\"post\">\r\n");
      out.write("                                                        <input type=\"text\" name=\"title\" id=\"title\" class=\"inpt\"  value=\"");
      out.print(onepostList.get(0).getTitle());
      out.write("\">\r\n");
      out.write("                                                        <input type=\"hidden\" name=\"post_seq\" id=\"post_seq\" value=\"");
      out.print(onepostList.get(0).getPost_seq() );
      out.write("\">\r\n");
      out.write("                                                         <div class=\"tabs\">\r\n");
      out.write("                                                        <span class=\"tab signin active\"><a href=\"#signin\">본문내용</a></span>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <textarea id=\"post\" name=\"post\" style=\"width: 170px; height: 100px;\" cols=\"50\" rows=\"3\" maxlength=\"200\">");
      out.print(onepostList.get(0).getPost());
      out.write("</textarea>\r\n");
      out.write("                                                        <input type=\"date\" name=\"post_dt\" id=\"post_dt\" class=\"inpt\" value=\"");
      out.print(onepostList.get(0).getPost_dt());
      out.write("\">\r\n");
      out.write("                                                         \r\n");
      out.write("                                                         <div class=\"submit-wrap\">\r\n");
      out.write("                                                         \r\n");
      out.write("                                                            <input type=\"submit\" value=\"게시글수정\" class=\"submit\">\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                  </form>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                </article>\r\n");
      out.write("                          </section>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- End off Head_title -->\r\n");
      out.write("              <div class=\"row\"></div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- START SCROLL TO TOP  -->\r\n");
      out.write("\r\n");
      out.write("    <div class=\"scrollup\">\r\n");
      out.write("      <a href=\"#\"><i class=\"fa fa-chevron-up\"></i></a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"assets/js/vendor/jquery-1.11.2.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"assets/js/jquery.magnific-popup.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/jquery.mixitup.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/jquery.masonry.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!--slick slide js -->\r\n");
      out.write("    <script src=\"assets/css/slick/slick.js\"></script>\r\n");
      out.write("    <script src=\"assets/css/slick/slick.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script src=\"assets/js/plugins.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/main.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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