<?php
require_once("login.php");
require("genapi.php");
if(!empty($_GET['id'])) {
    $api = genapi($_GET['id']);
} else {
    $api = genapi();
}
include("html/apipage.html");
?>
