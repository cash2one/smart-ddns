<?php
require_once("login.php");
require ("sql2config.php");
$username=$userinfo['username'];
if(!empty($_GET['id'])&&filter_var($_GET['id'],FILTER_VALIDATE_INT))
{
	$id=$_GET['id'];
	$result=bindRecord($id,$username);
	if(!$result['status'])
		$result['msg']="绑定失败";	
	bindDEVConfig();
}

else
    echo "error";

function bindRecord($id,$username)
{
	require("conn.php");
	$sql="update $dns_table set if_bind='' where owner='$username'";
	$sql1="update $dns_table set if_bind=1 where id=$id and owner='$username'";
	$result1=mysql_query($sql,$con);
	$result=mysql_query($sql1,$con);
	mysql_close($con);
	if($result)
	{
		return true;
	}
	else 
	{
		return false;
	}
	
	
}

?>