<%-- 
    Document   : upload
    Created on : 2011-7-31, 20:11:31
    Author     : TMW
--%>
<%@page contentType="text/html" pageEncoding="GBK"%>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">
        <link rel="stylesheet" href="style.css"/>
        <title>JSP Page</title>
        <script language="javascript">
            function checkFile(str,exStr) {
                if(typeof(exStr)=='undefined')
                    exStr = ".jpg|.jpeg";
                var strRegex = "("+exStr+")$"; //������֤ͼƬ��չ����������ʽ
                var re=new RegExp(strRegex);
                if (re.test(str.toLowerCase())){
                    return true;
                }
                else{
                    alert("�ļ������Ϸ�,�ļ�����չ������Ϊ"+exStr+"��ʽ");
                    return false;
                }
            }
            function UploadImg()
            {
                var picfile=document.getElementById("picfile");
                var filext="."+picfile.value.substring(picfile.value.lastIndexOf(".")+1);
                if(checkFile(filext,".jpg|.jpeg"))
                {
                    var picupload=document.getElementById("picupload");
                    picupload.submit();
                }
            }
        </script>
        <style type="text/css">
            <!--
            body {
                margin-left: 0px;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
                font-family: "����";
                overflow-y:hidden;
                overflow-x:hidden;
            }
            -->
        </style>
    </head>

    <body >
        <form name="picupload" id="picupload" enctype="multipart/form-data" method="post" action="../photoupload">
            <input type="file" name="picfile" id="picfile" onChange="UploadImg();"><font color="red">*</font>
        </form>
    </body>
</html>
