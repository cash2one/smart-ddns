<?php
    function getBindIP($username,$dnsname)
    {
        require("conn.php");
        $sql = "select value from $dns_table where owner='$username' and name='$dnsname'";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        if($row = mysql_fetch_array($result))
            return $row['value'];
        else
            return "未设置";
    }
    
    function getAll($username)
    {
        require("conn.php");
        $sql = "select * from $dns_table where owner='$username' and name!='@'";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        return $result;
    }

    function getOne($id,$username)
    {
        require("conn.php");
        $sql = "select name,value from $dns_table where id=$id and owner='$username'";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        return $result; 
    }
?>
