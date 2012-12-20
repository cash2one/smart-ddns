<?php
    require_once("config.php");
    require_once("login.php");
    global $userinfo;

    function isIP($tmp_ip)
    {
        $ip = explode(".",$tmp_ip);
        for($i=0;$i<count($ip);$i++)
        {
            if($ip[$i]>255)
            {
                return(0);
            }
        }
        return ereg("^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$",$tmp_ip);
    }

    function addRecord($dnsname,$update_ip,$username)
    {
        require("conn.php");
        $sql_if = "select id from $dns_table where name='$dnsname' and owner='$username'";
        $result = mysql_query($sql_if,$con);
        if($id = mysql_fetch_array($result,MYSQL_NUM))
            $sql = "update $dns_table set value='$update_ip' where id=$id[0]";
        else
            $sql = "insert into $dns_table (name,value,owner) values ('$dnsname','$update_ip','$username')";
        mysql_query($sql,$con);
        mysql_close($con);
    }
    $post_ip = $_POST["update_ip"];
    if($post_ip)
        if(isIP($post_ip))
        {
            addRecord('@',$post_ip,$userinfo['username']);
        }
        else
        {
        }
    else
    {
        addRecord('@',$_SERVER['REMOTE_ADDR'],$userinfo['username']);
    }
?>
