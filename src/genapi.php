<?php
require("key.php");
require_once("select.php");
function genapi($id=null) {
    global $userinfo;
    $username = $userinfo['username'];
    if($id){
        $result = getOne($id,$username);
        $row = mysql_fetch_array($result);
        $name = $row['name'];
        $ip=$_SERVER['REMOTE_ADDR'];
    } else {
        $name = '@';
        $ip=$_SERVER['REMOTE_ADDR'];
        
    }

    $key = getKey($username);
    if(!$key) {
        $key = genKey(10);
        setKey($username,$key); 
    }
    $api = "http://ddns.corp.anjuke.com/acceptapi.php?dnsname=".$name."&key=".$key."&username=".$username."&ip=";
    return $api;
}
?>
