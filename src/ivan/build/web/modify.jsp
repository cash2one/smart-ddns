

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta http-equiv="Cache-Control" CONTENT="no-cache">
        <meta http-equiv="Expires" CONTENT="0">
<title>JSP Page</title>
        
        

        <style type="text/css">
 body {
                margin-left: 0px;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
                font-family: "??";
                font-size: 12px;
            }


.bgdiv{
background:#000;
filter:alpha(opacity=40);
position:absolute;
z-index:1000;
display:none;
 
}
.webpage
{
 position:absolute;
 z-index:1003;
 display:none;
}
.btnQQ {
	background-image: url(images/button1.jpg); 
                                       
	font-size: 12px;               
	height: 22px;                     
	width:71px;	                   
	border: 1px;                     
}

td{
font-size:12px;
}
.borderall {
	border: 1px solid #999;
}
.borderudr {
	border: 1px solid #999;
}
.borderud {
	border-top-width: 1px;
	border-bottom-width: 1px;
	border-top-style: solid;
	border-bottom-style: solid;
	border-top-color: #999;
	border-bottom-color: #999;
}
.borderul {
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #999;
	border-bottom-color: #CCCCCC;
}
.onlyu {
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.onlyr {
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #999;
}
.onlyright{
        border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #ccc;
}
.topandright {
	border-top-width: 1px;
	border-right-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: none;
	border-left-style: none;
	border-top-color: #999;
	border-right-color: #999;
}
.onlytop {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	border-top-color: #999;
	border-right-color: #999;
	border-bottom-color: #999;
	border-left-color: #999;
}
.topandright1 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: none;
	border-left-style: none;
	border-top-color: #ccc;
	border-right-color: #ccc;
	border-bottom-color: #ccc;
	border-left-color: #ccc;
}
.onlytop1 {
	border-top-width: 1px;
	border-top-style: solid;
	border-top-color: #ccc;
}
.topandright2 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-top-color: #999;
	border-right-color: #ccc;
}

.menu-toptit {
	font-size: 12px;
	color: #2E4B85;
	height: 27px;
	padding-left:40px;
	padding-top: 1px;
	background-image: url(../images/menu_toptit.jpg);
	background-repeat: repeat-x;
}
.menu_item {
	font-size: 12px;
	color: #333333;
	background-image: url(../images/menu_item_bg.jpg);
	background-repeat: no-repeat;
	background-color:#FFFFFF;
	background-position: center center;
	padding-top:3px;
	padding-left: 40px;
	height: 28px;

}
        </style>
 <script type="text/javascript" src="inc/build/yahoo/yahoo-min.js" ></script>
 <script type="text/javascript" src="inc/build/event/event-min.js" ></script>
 <script type="text/javascript" src="inc/build/dom/dom-min.js"></script> 
<script type="text/javascript" src="inc/build/dragdrop/dragdrop-debug.js" ></script>
 <script type="text/javascript" src="inc/build/animation/animation-min.js"></script>
<script language="javascript" src="inc/function.js" ></script>
 <script language="javascript" src="inc/time.js" ></script>
  <link href="inc/style.css" rel="stylesheet" type="text/css" />

<script language="javascript">
    
function del(newsid)
            {
                if(confirm("??????"))
                    gourl("delnews?newsid="+newsid+"&pageno=<%=pageno%>");

            }
            
var clickobj=null; 
       function checkselect() 
       { 
       var  cklist=document.getElementsByName("newsid");    

         var ckall=document.getElementById("checkall");        
         for(var i=0;i<cklist.length;i++)                                  
         { 
           var ckitem=cklist.item(i);
           if(ckall.checked) 
           { 
             ckitem.checked=true;                                                   
             var newsid=ckitem.value;                                            
             var rowobj=document.getElementById(newsid);           
              rowobj.style.background="#E8EFF7";                      
           }else 
           { 
             ckitem.checked=false;                                                   
               var newsid=ckitem.value;                                           
               var rowobj=document.getElementById(newsid);         
                      rowobj.style.background="";                    
           } 
         } 
       } 

function mover(objid)
{
var rowobj=document.getElementById(objid);
rowobj.style.background="#E8EFF7";
}

function mout(objid)
{
var rowobj=document.getElementById(objid);
var ckbox=document.getElementById("c"+objid);
if(ckbox.checked==false)
rowobj.style.background="#FFFFFF";
}
function rowselect(objid)
{
var rowobj=document.getElementById(objid);
var ckbox=document.getElementById("c"+objid);
var cklist=document.getElementsByName("newsid");
for(var i=0;i<cklist.length;i++)
{
var ckitem=cklist.item(i);
ckitem.checked=false;
var newsid=ckitem.value;
var rowobjtmp=document.getElementById(newsid);
rowobjtmp.style.background=""
}
ckbox.checked=true;
rowobj.style.background="#E8EFF7";
}


function deleteall()
{
var cklist=document.getElementsByName("newsid");
var idlist="";
for(var i=0;i<cklist.length;i++)
{
var ckitem=cklist.item(i);
if(ckitem.checked==true)
idlist=idlist+" "+ckitem.id;
}
if(idlist=="")
window.alert("??????????");
else
{
window.alert("???????");
window.alert("????????"+idlist);
}
}

		
		YAHOO.example.DDApp = function() {
                var dd;
                return {
                    init: function() {
                        dd= new YAHOO.util.DD("divbox");
                    }
                }
            }();
            YAHOO.util.Event.onDOMReady(YAHOO.example.DDApp.init);

function getobject(id)
{
    var obj=document.getElementById(id);
    return obj;
}


function getxforie()
{
    return event.x;
}

function getyforie()
{
    return event.y;
}

function getxforff(event)
{
    return event.clientX;
}

function getyforff(event)
{
    return event.clientY;
}

function checkbrowser()
{
    if (window.navigator.userAgent.indexOf("MSIE")>=1)
        return "ie";
    else if (window.navigator.userAgent.indexOf("Firefox")>=1)
        return "ff";
    else if(window.navigator.userAgent.indexOf("Chrome")>=1)
        return "chrome";
}


function showfuncbox(title,width,height,src)
{
    showbg();
    var ciframes=getobject("contentframes");

    if(checkbrowser()=="ie")   
        ciframes.style.width=width;
    else
        ciframes.style.width=width-5;
    
    ciframes.style.height=height-50;
    ciframes.src=src;

    var funcbox=showdivbox(title,width,height);
    funcbox.style.left=document.body.clientWidth/2-width/2;
    funcbox.style.top=document.body.clientHeight/2+document.body.scrollTop-height/2;

    funcbox.style.display="block";
}

function showdivbox(title,width,height)
{
    var divbox=getobject("divbox");
    divbox.style.width=width;
    divbox.style.height=height;

    var divtitle=getobject("divtitle");
    divtitle.innerHTML=title;

    return divbox;
}

function showbg()
{
    var holder=document.getElementById("bgdiv");
    holder.style.width=document.body.clientWidth;
	
    if (document.body.clientHeight>document.body.scrollHeight)
        holder.style.height=document.body.clientHeight;
    else
        holder.style.height=document.body.scrollHeight;

    holder.style.display="block";
}
function disdivbox()
{
    disbg();
    var divbox=getobject("divbox");
    divbox.style.display="none";
	
    var divtitle=getobject("divtitle");
    divtitle.innerHTML="";
	
    var ciframes=getobject("contentframes");
    ciframes.src="";
}

function disbg()
{
    var holder=document.getElementById("bgdiv");
    holder.style.display="none";
}


</script>
<style type="text/css">
<!--
.STYLE2 {font-size: 14px}
-->
</style>
</head>
    <body>
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
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" class="borderall" >
  <tr>
    <td height="20" colspan="3" align="left" valign="middle" background="images/tab.jpg">&nbsp;SMART_DDNS</td>
  </tr>
  <tr>
    <td width="9" background="images/tab2.jpg">&nbsp;</td>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="borderall">
      <tr>
        <td colspan="5"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr width="100%">
            <td width="66%" height="25" background="images/backt.jpg">&nbsp;</td>
            <td width="34%" align="right" background="images/backt.jpg"><img src="images/sign.gif" width="20" height="16"  style="cursor:pointer;" /><span  style="cursor:pointer;">UPDATE</span><img src="images/done.gif" width="20" height="16" onClick="window.parent.showfuncbox('????',800,600,'newslist.html');" style="cursor:pointer;"/><span onClick="window.parent.showfuncbox('????',800,600,'newslist.html');" style="cursor:pointer;">ADD</span></td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td width="3%" height="21" align="center" background="images/grid-blue-hd.gif" class="topandright" id="3"><label>
          <input type="checkbox" name="checkall" id="checkall" value="checkbox" onClick="checkselect();" />
        </label></td>
        <td width="57%" align="center" background="images/grid-blue-hd.gif" class="topandright">
<table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
<td width="33%" align="center" background="images/grid-blue-hd.gif" class="onlyr">NAME</td>
<td width="33%" align="center" background="images/grid-blue-hd.gif" class="onlyr">ZONE</td>
<td width="33%" align="center" background="images/grid-blue-hd.gif" >TYPE</td>
</table>
</td>
        
        <td width="13%" align="center" background="images/grid-blue-hd.gif" class="topandright">VALUE</td>
        <td width="10%" align="center" background="images/grid-blue-hd.gif" class="topandright">OWNER</td>
        <td width="17%" align="center" background="images/grid-blue-hd.gif" class="onlytop">MANAGE</td>
      </tr>
        
      <tr id="1" onMouseOver="mover(1);" onMouseOut="mout(1);">
        <td height="21" align="center" background="images/grid-blue-hd.gif" class="topandright">
          <input type="checkbox" name="newsid" value="1" id="c1" />
        </td>
        <td align="center" class="topandright2" onClick="rowselect(1);">
<table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
<td width="33%" align="center" class="onlyright"></td>
<td width="33%" align="center"  class="onlyright"></td>
<td width="33%" align="center" ></td>
</table>
</td>
        <td align="center" class="topandright2" onClick="rowselect(1);" >&nbsp;</td>
        <td align="center" class="topandright2" onClick="rowselect(1);">&nbsp;</td>
        <td align="center" class="onlytop"><img src="images/bat.gif" alt="1" width="20" height="16"  style="cursor:pointer;" onClick="window.parent.showfuncbox('????',800,600,'newslist.html');"/><span style="cursor:pointer" onClick="window.parent.showfuncbox('????',800,600,'newslist.html');">MODIFY</span>&nbsp;&nbsp;<img src="images/undo.gif" alt="1" width="20" height="16"  style="cursor:pointer;" onClick="del(1)"/><span style="cursor:pointer" onClick="del(1)">DELETE</span></td>
      </tr>
      
      <tr style="background:#E8EFF7;" id="2" onMouseOver="mover(2);" onMouseOut="mout(2);">
        <td height="21" align="center" background="images/grid-blue-hd.gif" class="topandright"><label>
          <input type="checkbox" name="newsid" value="2"  id="c2"/>
        </label></td>
        <td align="center" class="topandright1" onClick="rowselect(2);">
<table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
<td width="33%" align="center"  class="onlyright"></td>
<td width="33%" align="center"  class="onlyright"></td>
<td width="33%" align="center"  ></td>
</table></td>
        <td align="center" class="topandright1" onClick="rowselect(2);">&nbsp; </td>
        <td align="center" class="topandright1" onClick="rowselect(2);">&nbsp;</td>
        <td align="center" class="onlytop1"><img src="images/bat.gif" alt="1" width="20" height="16"  style="cursor:pointer;" onClick="window.parent.showfuncbox('????',800,600,'newslist.html');"/><span style="cursor:pointer" onClick="window.parent.showfuncbox('????',800,600,'newslist.html');">MODIFY</span>&nbsp;&nbsp;<img src="images/undo.gif" alt="1" width="20" height="16"  style="cursor:pointer;" onClick="del(1)"/><span style="cursor:pointer" onClick="del(1)">DELETE</span>
      </tr>
    </table></td>
    <td width="9" background="images/tab2.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="20" colspan="3" background="images/tab.jpg">&nbsp;</td>
  </tr>
  
</table>
    </body>
</html>
