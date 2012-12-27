<?php
require_once("login.php");
require("check.php");
require("editrecord.php");

function getKey($username)
{
    require("conn.php");
    $sql = "select key from $key_table where username='$username'";
    $result = mysql_query($sql,$con);
    $row = mysql_fetch_array($result);
    return $row['key'];
}

if(!empty($_GET['dnsname']) && !empty($_GET['key']) && !empty($_GET['username'])) {
    if($userinfo['username']==$_GET['username']) {
        $key = getKey($_GET['username']);
        if(isName($_GET['dnsname']) && $key==$_GET['key']) {
            addRecord($_GET['dnsname'],$_SERVER['REMOTE_ADDR'],$_GET['username']);
        }
    }
}
?>
