var XMLHttpReq;

function createXMLHttpRequest() {
    if(window.XMLHttpRequest) {
        XMLHttpReq = new XMLHttpRequest();
    }else if (window.ActiveXObject) {
        try
        {
            XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
        }
    }
}

function SendPost(param,type,url,funcname)
{
    createXMLHttpRequest();
    XMLHttpReq.open(type, url, true);
    XMLHttpReq.onreadystatechange=funcname;

    if(type=="post")
        XMLHttpReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    else if (type=="get")
        param=null;

    XMLHttpReq.setRequestHeader("If-Modified-Since","0");
    XMLHttpReq.send(param);
}

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

function gourl(url)
{
    location.href=url;
}

function CheckBg()
{
    var holder=document.getElementById("bgdiv");
    return holder.style.display;
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


function showdivbox(title,width,height)
{
    var divbox=getobject("divbox");
    divbox.style.width=width;
    divbox.style.height=height;

    var divtitle=getobject("divtitle");
    divtitle.innerHTML=title;

    return divbox;
}

function redivbox()
{
    var divbox=getobject("divbox");
    var divorgwid=divbox.style.width;
    var divboxwid=divorgwid.substring(0,divorgwid.indexOf("p"));
    divbox.style.left=document.body.clientWidth/2-divboxwid/2;
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


function goiframes(url)
{
    var frames=getobject("mainiframes");
    frames.src=url;
}

function showtip(objid,event)
{
    var previewdivbox=getobject("tipdiv");
    var linktitle=getobject(objid);
    var  x =linktitle.offsetLeft,y=linktitle.offsetTop;   
    while(linktitle=linktitle.offsetParent)
    {
        x +=linktitle.offsetLeft;   
        y +=linktitle.offsetTop;
    } 
    previewdivbox.style.left=x;
    var posy;
    if(checkbrowser()=="ie")
        posy=getyforie();
    else 
        posy=getyforff(event);
    previewdivbox.style.top=y;
    previewdivbox.style.display="block";
}

function distip()
{
    var previewdivbox=getobject("tipdiv");
    previewdivbox.style.display="none";
}


function CheckLength(string,len,name) {
    if(string.length>len)
    {
        alert(name+"的长度不能超过"+len+"位");
        return false;
    }
    else
        return true;
}


function returntextbyvalue(objSelect,objText)
{
	var selecttext;
	for (var i = 0; i < objSelect.options.length; i++) {       
        if (objSelect.options[i].value == objText) {       
            selecttext=objSelect.options[i].text;
            break;       
        }       
    }
	return selecttext;
}

// 1.判断select选项中 是否存在Value="paraValue"的Item       
function jsSelectIsExitItem(objSelect, objItemValue) {       
    var isExit = false;     
    for (var i = 0; i < objSelect.options.length; i++) {       
        if (objSelect.options[i].value == objItemValue) {       
            isExit = true;    
            objSelect.options[i].selected=true;
            break;       
        }       
    }       
    return isExit;       
}

function jsAddItemToSelect(objSelect, objItemText, objItemValue) {       
    //判断是否存在       
    if (jsSelectIsExitItem(objSelect, objItemValue)) {       
        alert("该Item的Value值已经存在");       
    } else {       
        var varItem = new Option(objItemText, objItemValue);  
        objSelect.options.add(varItem);
    }       
} 

// 3.从select选项中 删除一个Item 
function jsRemoveItemFromSelect(objSelect, objItemValue) {       
    //判断是否存在       
    if (jsSelectIsExitItem(objSelect, objItemValue)) {       
        for (var i = 0; i < objSelect.options.length; i++) {       
            if (objSelect.options[i].value == objItemValue) {       
                objSelect.options.remove(i);       
                break;       
            }       
        }       
        alert("成功删除");       
    } else {       
        alert("该select中 不存在该项");       
    }       
}

// 4.删除select中选中的项   
function jsRemoveSelectedItemFromSelect(objSelect) {       
    var length = objSelect.options.length - 1;   
    for(var i = length; i >= 0; i--){   
        if(objSelect[i].selected == true){   
            objSelect.options[i] = null;   
        }   
    }   
} 

// 5.修改select选项中 value="paraValue"的text为"paraText"       
function jsUpdateItemToSelect(objSelect, objItemText, objItemValue) {       
    //判断是否存在       
    if (jsSelectIsExitItem(objSelect, objItemValue)) {       
        for (var i = 0; i < objSelect.options.length; i++) {       
            if (objSelect.options[i].value == objItemValue) {       
                objSelect.options[i].text = objItemText;       
                break;       
            }       
        }       
        alert("成功修改");       
    } else {       
        alert("该select中 不存在该项");       
    }       
} 

// 6.设置select中text="paraText"的第一个Item为选中       
function jsSelectItemByValue(objSelect, objItemText) {           
    //判断是否存在       
    var isExit = false;       
    for (var i = 0; i < objSelect.options.length; i++) {       
        if (objSelect.options[i].text == objItemText) {       
            objSelect.options[i].selected = true;       
            isExit = true;       
            break;       
        }       
    }             
    //Show出结果       
    if (isExit) {       
        alert("成功选中");       
    } else {       
        alert("该select中 不存在该项");       
    }       
}
