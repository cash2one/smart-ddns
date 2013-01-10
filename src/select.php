<?php
    function getBindIP($username,$dnsname)
    {
        require("conn.php");
        $sql = "select value from $dns_table where owner='$username' and name='$dnsname'";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        if($row = mysql_fetch_array($result))
            return $row['value'];
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
    
    

    function getAllUsers()
    {
        require("conn.php");
        $sql = "select * from $dns_table";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        return $result;
       
    }
    
    

    function getCount($username,$dnsname,$id)
    {
        require("conn.php");
        $sql = "select count(id) from $dns_table where owner='$username' and name='$dnsname' and id!='$id'";
        $result = mysql_query($sql,$con);
        mysql_close($con);
        $row = mysql_fetch_array($result,MYSQL_NUM);
        if($row[0])
            return $row[0];
        else
            return 0;
    }
    
    function getAllif_bind()
    {
    	require("conn.php");
    	$sql="select * from $dns_table where if_bind=1";
    	$result = mysql_query($sql,$con);
    	mysql_close($con);
    	return $result;
    	
    }
    
    function getBind($username)
    {
    	require ("conn.php");
    	$sql="select * from $dns_table where if_bind=1 and owner='$username'";
    	$result=mysql_query($sql,$con);
    	mysql_close($con);
    	return $result;
    }
    
    
?>
