<?php
    require_once("config.php");
    $dns_table = "dynamic_record";
    $con = mysql_connect(DB_HOST,DB_USER,DB_PASS);
    if(!$con)
    {
        die('Could not connect: '.mysql_error());
    }
    mysql_select_db(DB_NAME,$con);
?>
