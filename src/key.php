<?php
function genKey($len)
{
    $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    $key = '';
    for($i=0; $i<$len; $i++) {
        $key .= $chars[mt_rand(0,strlen($chars)-1)];
    }
    return $key;
}

function setKey($username,$key)
{
    require("conn.php");
    $sql = "insert into $key_table(username,`key`) values('$username','$key') on duplicate key update `key`='$key'";
    $result = mysql_query($sql,$con);
    mysql_close($con);
    if($result) {
        return true;
    } else {
        return false;
    }
}

function getKey($username)
{
    require("conn.php");
    $sql = "select * from $key_table where username='$username'";
    $result = mysql_query($sql,$con);
    mysql_close($con);
    $row = mysql_fetch_array($result);
    if($row){
        return $row['key'];
    } else {
        return false;
    }
}
?>
