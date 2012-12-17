<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>欢迎访问SMART_DDNS系统</title>
        <link href="inc/style.css" rel="stylesheet" type="text/css">
        <script language="javascript" src="inc/function.js" ></script>
        <script language="javascript" src="inc/time.js" ></script>
        <script type="text/javascript" src="inc/build/yahoo/yahoo-min.js" ></script>
        <script type="text/javascript" src="inc/build/event/event-min.js" ></script>
        <script type="text/javascript" src="inc/build/dom/dom-min.js"></script>
        <script type="text/javascript" src="inc/build/dragdrop/dragdrop-debug.js" ></script>
        <script type="text/javascript" src="inc/build/animation/animation-min.js"></script>
        <script language="javascript">
            YAHOO.example.DDApp = function() {
                var dd;
                return {
                    init: function() {
                        dd= new YAHOO.util.DD("divbox");
                    }
                }
            }();
            YAHOO.util.Event.onDOMReady(YAHOO.example.DDApp.init);
			
            function switchmenu()
            {
                var trmenu=document.getElementById("trmenu");
                if(trmenu.style.display=="table-cell")
                {
                    var actionimg=document.getElementById("actionimg");
                    actionimg.src="images/FOpen.gif";
                    trmenu.style.display="none";
                }else if(trmenu.style.display=="none")
                {
                    var actionimg=document.getElementById("actionimg");
                    actionimg.src="images/FClose.gif";
                    trmenu.style.display="table-cell";
                }

            }
        </script>
    </head>

    <body bottommargin="0">
        <div id="bgdiv" class="bgdiv"></div>
        <table border="0" cellpadding="0" cellspacing="0" class="block" id="divbox" style="position:absolute;display:none;z-index:2000;">
            <tr>
                <td colspan="2" class="block-title" id="divtitle" style="float:left;font-size: 12px;">&nbsp;</td>
                <td align="right"><img src="images/close3.gif" style="cursor:pointer" width="20" height="20" onClick="disdivbox();" >&nbsp;</td>
            </tr>
            <tr>
                <td width="1057" colspan="3" class="block-body"> <iframe src='' id="contentframes" name="contentframes" frameborder='0'></iframe></td>
    </tr>
</table>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="90"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="500" height="60" background="images/back1.png" border="0" cellspacing="0" cellpadding="0" >
</td>
                    <td align="right" background="images/top.jpg" border="0" cellspacing="0" cellpadding="0"><img src="images/home.jpg" width="70" height="50" style="cursor:pointer;" onClick="goiframes('firstpage.jsp');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/exit.jpg" width="70" height="50" style="cursor:pointer;" >&nbsp;</td>
                </tr>
                <tr>
                    <td height="30" colspan="2" valign="middle" background="images/por_bkg.gif" ><table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td class="bfont">
                                    欢迎登录 当前时间&nbsp;</td>
                                <td  id="webjx"  class="bfont">&nbsp; </td>
                            </tr>
                        </table></td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td><table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="174" valign="top" bgcolor="#CBE0FD" id="trmenu" style="display:table-cell;"><table width="174" border="0" cellpadding="0" cellspacing="0">
                            <tr> 
                                <td class="menu-toptit">系统菜单</td>
                            </tr>
                            <tr>
                                <td valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td class="menu_item"><a  onClick="goiframes('firstpage.jsp');" style="cursor:pointer">系统首页</a></td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="menu_item"><a  onClick="goiframes('secondpage.jsp');" style="cursor:pointer">修改记录值</a></td>
                                        </tr>
                                       
										 
                                        <tr>
                                            <td class="menu_item"><a  onClick="goiframes('modify.jsp');" style="cursor:pointer">我的DNS记录</a></td>
                                        </tr>

                                        <tr>
                                            <td class="menu_item"><a style="cursor:pointer">退出系统</a></td>
                                        </tr>
                                    </table></td>
                            </tr>
                            <tr>
                                <td valign="top"><img src="images/menu_bg_short.jpg" width="174" height="117"></td>
                            </tr>
                        </table></td>
                    <td width="8" align="center" id="actiontr" background="images/main_onoff_bg.jpg" style="cursor:pointer;" onClick="switchmenu();"><img id="actionimg" src="images/FClose.gif" alt="" width="8" height="100"  /></td>
                    <td valign="top"><iframe src="firstpage.jsp"  height="100%" width="100%"  name="mainiframes" id="mainiframes"  frameborder="0" scrolling="auto"></iframe></td>
    </tr>
</table></td>
</tr>
</table>
</body>
</html>
