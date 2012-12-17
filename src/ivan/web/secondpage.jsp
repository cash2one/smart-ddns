
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎访问SMART_DDNS系统</title>
<style type="text/css">
body {
                margin-left: 2px;
                margin-top: 2px;
                margin-right: 2px;
                margin-bottom: 0px;
                font-family: "宋体";
                font-size: 12px;
				background-image:url(images/welbg.jpg);
				background-repeat: repeat-x;
            }
            .write{
                 font-family: "宋体";
                font-size: 12px;
            }
.btnQQ {
    background-image: url(images/button.jpg);
    font-size: 12px;
    height: 22px;
    width:71px;	
    border: 0px outset;
}
</style>
</head>

<body >
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
      <td width="25%" class="write" height="244" valign="top"><strong>用户须知:</strong><br><br>1、动态DNS的ZONE:d.corp.anjuke.com. <br><br>2、用户的动态DNS记录：[***].username.d.corp.anjuke.com.用户可自行根据需要修改username及DNS记录所对应IP </td>
    <td height="244" align="center" valign="bottom"><table width="80%" border="0" cellspacing="0" cellpadding="0" >
      <tr>
        <td width="35%" align="right"><font size="3"><strong>username:&nbsp;</strong></font></td>
        <td><input type="text" name="textfield" /></td>
      </tr>
      <tr>
        <td width="30%" align="center">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="right"><font size="3"><strong>the banding IP:&nbsp;</strong> </font></td>
        <td><input type="text" name="textfield2" /></td>
      </tr>
      <font size="4">
      <tr>
        <td align="center">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="right"><font size="3"><strong>update IP:&nbsp;</strong></font> </td>
        <td><input type="text" name="textfield3" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="30" align="right"><input name="button" type="submit" class="btnQQ" id="button" value=" update " onClick="CheckForm();"></td>
        <td align="center"><input name="button" type="submit" class="btnQQ" id="button" value="log  out" onClick="CheckForm();"></td>
      </tr>
      </font>
    </table></td>
  </tr>
  <tr>
    <td height="335">&nbsp;</td>
    <td width="59%" align="left" valign="bottom">&nbsp;</td>
  </tr>
</table>
</body>
</html>
