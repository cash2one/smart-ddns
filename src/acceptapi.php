<?php
require("check.php");
require("editrecord.php");
require("key.php");
require("sql2config.php");
require("conn.php");

if(!empty($_GET['dnsname']) && !empty($_GET['key']) && !empty($_GET['username'])) {
        $key = getKey($_GET['username']);
        if(isName($_GET['dnsname']) || $key==$_GET['key']) {
            addRecord($_GET['dnsname'],$_SERVER['REMOTE_ADDR'],$_GET['username']);
            bindConfig();
        }
}
?>
