<?php
require_once("login.php");
require("select.php");
require("key.php");

$username = $userinfo['username'];
if(!empty($_GET['id'])){
    $result = getOne($_GET['id'],$username);
    $row = mysql_fetch_array($result);
    $name = $row['name'];
} else {
    $name = '@';
}

$key = getKey($username)
    if(!$key) {
        $key = genKey(10);
        setKey($username,$key); 
    }
$api = "ddns.corp.anjuke.com/acceptapi.php?dnsname=".$name."&key=".$key."&username=".$username;
echo "<script>alert(".$api.");</script>";
?>
