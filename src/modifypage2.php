<?php
require_once("config.php");
require_once("login.php");

require_once("select.php");

if(isset($_GET['id']) && $_GET['id'] && filter_var($_GET['id'],FILTER_VALIDATE_INT))
{
    $result = getOne($_GET['id'],$userinfo['username']);
    while($row = mysql_fetch_array($result))
    {
        $name_view = $row['name'];
        $ip_view = $row['value'];
    }
}
global $name_view,$ip_view;
include("html/modifypage2.html");
?>
