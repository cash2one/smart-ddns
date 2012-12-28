<?php
require_once("login.php");
require("key.php");

$flag = setKey($userinfo['username'],genKey(10));
if($flag) {
    $result['status'] = true;
} else {
    $result['status'] = false;
    $result['msg'] = "更新失败";
}
echo json_encode($result);

?>
