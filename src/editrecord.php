<?php
function addRecord($dnsname,$update_ip,$username)
{
    require("conn.php");
    $sql_if = "select id from $dns_table where name='$dnsname' and owner='$username'";
    $result = mysql_query($sql_if, $con);
    if($row = mysql_fetch_array($result,MYSQL_NUM)) {
        $sql = "update $dns_table set value='$update_ip' where id=$row[0]";
    } else {
        $sql = "insert into $dns_table (name,value,owner) values ('$dnsname','$update_ip','$username')";
    }

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
?>
