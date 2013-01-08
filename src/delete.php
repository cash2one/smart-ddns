<?php
    require_once("login.php");
    require("sql2config.php");
    require("sql1config.php");
    function deleteRecord($id,$username)
    {
        require("conn.php");
        $sql = "delete from $dns_table where id=$id and owner='$username'";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        if($result) {
            return true;
        } else {
            return false;
        }
    }

    $username = $userinfo['username'];
    if(!empty($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT))
    {
        $id = $_GET['id'];
        $result['status'] = deleteRecord($id,$username);
        if(!$result['status'])
            $result['msg'] = "删除失败";
        bindConfig();
        bindDEVConfig();
    }
   
    else 
        echo "error";
    bindDEVConfig();
?>
