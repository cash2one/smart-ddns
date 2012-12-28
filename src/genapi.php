<?php
require("key.php");
function genapi($id=null) {
    global $userinfo;
    $username = $userinfo['username'];
    if($id){
        $result = getOne($id,$username);
        $row = mysql_fetch_array($result);
        $name = $row['name'];
    } else {
        $name = '@';
    }

    $key = getKey($username);
    if(!$key) {
        $key = genKey(10);
        setKey($username,$key); 
    }
    $api = "ddns.corp.anjuke.com/acceptapi.php?dnsname=".$name."&key=".$key."&username=".$username;
    return $api;
}
?>
