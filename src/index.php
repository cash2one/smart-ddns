<?php
require_once("config.php");
require_once("login.php");

$user = new User;
$userinfo = $user->check_login($_SERVER["PHP_SELF"]);

include("html/index.html");
?>
