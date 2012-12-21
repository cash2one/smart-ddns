<?php
    require_once("login.php");
    require("sql2config.php");
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
        if($row = mysql_fetch_array($result,MYSQL_NUM))
            $sql = "update $dns_table set value='$update_ip' where id=$row[0]";
        else
            $sql = "insert into $dns_table (name,value,owner) values ('$dnsname','$update_ip','$username')";
        mysql_query($sql,$con);
        mysql_close($con);
    }

    function modifyRecord($id,$dnsname,$modify_ip)
    {
        require("conn.php");
        $sql = "update $dns_table set name='$dnsname',value='$modify_ip' where id=$id";
        mysql_query($sql,$con);
        mysql_close($con);
    }

    if(isset($_POST['modify_id']) && $_POST['modify_id'])
    {
        $id = $_POST['modify_id'];
        if(isset($_POST['modify_name']) && $_POST['modify_name'])
        {
            $dnsname = $_POST['modify_name'];
            if(isset($_POST['modify_ip']) && $_POST['modify_ip'])
            {
                $post_ip = $_POST['modify_ip'];
                if(isIP($post_ip))
                    modifyRecord($id,$dnsname,$post_ip);
            }
            else
                modifyRecord($id,$dnsname,$_SERVER['REMOTE_ADDR']);
        }
    }
    elseif(isset($_POST['name']) && $_POST['name'])
    {
        $dnsname = $_POST['name'];
        if(isset($_POST['add_ip']) && $_POST['add_ip'])
        {
            $post_ip = $_POST['add_ip'];
            if(isIP($post_ip))
                addRecord($dnsname,$post_ip,$userinfo['username']);
        }
        else
            addRecord($dnsname,$_SERVER['REMOTE_ADDR'],$userinfo['username']);
    }
    else 
    {
        $dnsname = '@';
        if(isset($_POST['update_ip']) && $_POST['update_ip']) 
        {
            $post_ip = $_POST['update_ip'];
            if(isIP($post_ip))
                addRecord($dnsname,$post_ip,$userinfo['username']);
        }
        else
            addRecord($dnsname,$_SERVER['REMOTE_ADDR'],$userinfo['username']);
    }
    writeConfig();
?>
