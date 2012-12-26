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

        $result2 = mysql_query($sql,$con);
        mysql_close($con);

        if($result2) {
            return true;
        } else {
            return false;
        }
    }

    function modifyRecord($id,$dnsname,$modify_ip)
    {
        require("conn.php");
        $sql = "update $dns_table set name='$dnsname',value='$modify_ip' where id=$id";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        if($result) {
            return true;
        } else {
            return false;
        }
    }

    if(!empty($_POST['modify_id']))
    {
        $id = $_POST['modify_id'];
        if(!empty($_POST['name']))
        {
            $dnsname = $_POST['name'];
            if(!empty($_POST['update_ip']))
            {
                $post_ip = $_POST['update_ip'];
                if(isIP($post_ip)) {
                    $result['status'] = modifyRecord($id,$dnsname,$post_ip);
                    echo json_encode($result);
                } else {
                    $result['status'] = false;
                    if(! $result['status']) { $result['msg'] = "IP不符合规范"; }
                    echo json_encode($result);
                }
            }
            else {
                $result['status'] = modifyRecord($id,$dnsname,$_SERVER['REMOTE_ADDR']);
                echo json_encode($result);
            }
        }
        writeConfig();
        reloadConfig();
    }
    elseif(!empty($_POST['name']))
    {
        $dnsname = $_POST['name'];
        if(!empty($_POST['update_ip'])) {
            $post_ip = $_POST['update_ip'];
            if(isip($post_ip)) {
                $result['status'] = addrecord($dnsname,$post_ip,$userinfo['username']);
                echo json_encode($result);
            } else {
                $result['status'] = false;
                if(! $result['status']) { $result['msg'] = "IP不符合规范"; }
                echo json_encode($result);
            }
        } else {
            $result['status'] = addRecord($dnsname,$_SERVER['REMOTE_ADDR'],$userinfo['username']);
            echo json_encode($result);
        }
        writeConfig();
        reloadConfig();
    }
?>
