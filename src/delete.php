<?php
    require_once("config.php");
    require_once("login.php");
    function deleteRecord($id,$username)
    {
        require("conn.php");
        $sql = "delete from $dns_table where id=$id and owner='$username'";
        mysql_query($sql,$con);
        mysql_close($con);
    }

    $username = $userinfo['username'];
    if(isset($_GET['id']) && $_GET['id'] && filter_var($_GET['id'],FILTER_VALIDATE_INT))
    {
        $id = $_GET['id'];
        deleteRecord($id,$username);
    }
?>
