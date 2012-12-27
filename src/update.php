<?php
    require_once("login.php");
    require("sql2config.php");
    require("check.php");
    require("editrecord.php");

    if(!empty($_POST['name']))
    {
        if(isName($_POST['name'])) {
            $dnsname = $_POST['name'];
        } else {
            $result['status'] = false;
            $result['msg'] = "NAME只能为数字，字母，中横线或单独一个星号";
            echo json_encode($result);
            exit();
        }

        if(!empty($_POST['update_ip']))
        {
            if(isIP($_POST['update_ip'])) {
                $post_ip = $_POST['update_ip'];
            } else {
                $result['status'] = false;
                if(! $result['status']) { $result['msg'] = "IP不符合规范"; }
                echo json_encode($result);
                exit();
            }
        }
        else {
            $post_ip = $_SERVER['REMOTE_ADDR'];
        }
    } else {
        $result['status'] = false;
        $result['msg'] = "NAME不能为空";
        echo json_encode($result);
        exit();
    }
    
    if(!empty($_POST['modify_id']))
    {
        $id = $_POST['modify_id'];
        $result['status'] = modifyRecord($id,$dnsname,$post_ip);
    }
    else {
        $result['status'] = addrecord($dnsname,$post_ip,$userinfo['username']);
    }

    bindConfig();
?>
