<?php
require_once("config.php");
require_once("function.php");

$user = new User;

//logout
if(isset($_REQUEST['action']) && $_REQUEST['action'] === "logout") {
    $user->logout();
}

//build redirect url
if(isset($_REQUEST['custom']))
    $url = $_REQUEST['custom'];
else
    $url = "/index.php";

if(isset($_REQUEST['access_token'])) {
    $userinfo = $user->login_with_token();
}

if($_SERVER["SCRIPT_NAME"] == "/login.php") {
    header("HTTP/1.1 302 Found");
    header("Location: $url");
}

class User {
    public function __construct() {
        global $config;

        $this->OAUTH_ID     = $config['OAUTH_ID'];
        $this->OAUTH_SECRET = $config['OAUTH_SECRET'];
        $this->OAUTH_URL    = $config['OAUTH_URL'];

        $this->LOGOUT_URL   = $config['OAUTH_URL'].'/logout.php?client_id='.$config['OAUTH_ID'].'&client_secret='.$config['OAUTH_SECRET'];

        $this->ddns_auth    = isset($_COOKIE['ddns_auth']) ? $_COOKIE['ddns_auth'] : false;
        $this->access_token = isset($_REQUEST['access_token']) ? $_REQUEST['access_token'] : false;
        $this->encrypt_key  = date("YW");
    }

    public function check_login($custom) {
        //cookie登录验证有效
        if($this->ddns_auth) {
            return $this->check_cookie();
        }

        //access_token
        if($this->access_token) {
            return $this->login_with_token();
        }

        $this->login_with_oauthcurl($this->OAUTH_ID, $this->OAUTH_SECRET, $this->OAUTH_URL, $custom);
    }

    public function check_cookie() {
        $decrypted = decrypt($this->ddns_auth, $this->encrypt_key);
        $info = json_decode($decrypted, true);

        if($info) return $info;
        else $this->logout();
    }

    public function login_with_token() {
        $info = $this->get_info_from_ldap($this->access_token, $this->OAUTH_URL);

        if($info) {
            $encrypted = encrypt($info, $this->encrypt_key);
            setcookie("ddns_auth", $encrypted, time()+86400);
            return json_decode($info, true);
        } else {
            return false;
        }
    }

    public function get_info_from_ldap($access_token, $oauth_url) {
        $data = array(
            "oauth_token" => $access_token,
            "getinfo" => true,
        );

        $info = curl($oauth_url."/resource.php", $data);
        if($info) return $info;
        else return false;
    }


    private function login_with_oauthcurl($client_id, $client_secret, $oauth_url, $custom) {
        $array = array(
            "client_id"=>$client_id,
            "response_type"=>"code",
            "curl"=>true,
        );

        $info = json_decode(curl($oauth_url."/authorize.php", $array), true);
    
        if($info['code']) {
            $data = array(
                "client_id"=>$client_id,
                "client_secret"=>$client_secret,
                "grant_type"=>'authorization_code',
                "code"=>$info['code'],
                "custom"=>$custom,
            );
            header("HTTP/1.1 302 Found");
            header("Location: " . $oauth_url.'/token.php?'.http_build_query($data));
            exit();
        }
    }


    public function logout() {
        setcookie("ddns_auth", "", time()-86400);
        header("HTTP/1.1 302 Found");
        header("Location: ".$this->LOGOUT_URL);
    }
}
