<?php
    require_once("config.php");
    global $config;

    $dns_table = "dynamic_record";
    $key_table = "";
    $con = mysql_connect($config['DB_HOST'], $config['DB_USER'], $config['DB_PASS']);
    if(!$con)
    {
        die('Could not connect: '.mysql_error());
    }
    mysql_select_db($config['DB_NAME'], $con);
?>
