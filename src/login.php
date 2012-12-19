<?php
require_once("config.php");
require_once("function.php");

$user = new User;
if(isset($_REQUEST['action']) && $_REQUEST['action'] === "logout") {
    $user->logout(OAUTH_URL.'/logout.php?client_id='.OAUTH_ID.'&client_secret='.OAUTH_SECRET);
} else {
    $userinfo = $user->check_login();

    if($_SERVER["SCRIPT_NAME"] == "/login.php") {
        header("HTTP/1.1 302 Found");
        header("Location: /index.php");
    }
}

class User {
    public function __construct() {
        $this->ddns_auth    = isset($_COOKIE['ddns_auth']) ? $_COOKIE['ddns_auth'] : false;
        $this->access_token = isset($_REQUEST['access_token']) ? $_REQUEST['access_token'] : false;
        $this->encrypt_key  = date("YW");
    }

    public function check_login() {
        if($this->ddns_auth) {
            $decrypted = decrypt($this->ddns_auth, $this->encrypt_key);
            $info = json_decode($decrypted, true);

            if($info) {
                return $info;
            }
        }

        if($this->access_token) {
            $info = $this->get_info_from_ldap($this->access_token, OAUTH_URL);

            if($info) {
                $encrypted = encrypt($info, $this->encrypt_key);
                setcookie("ddns_auth", $encrypted, time()+86400);
                return json_decode($info, true);
            }
        }

        $this->login_with_oauthcurl(OAUTH_ID, OAUTH_SECRET, OAUTH_URL);
    }

    public function logout($auth_logout_url) {
        setcookie("ddns_auth", "", time()-86400);
        header("HTTP/1.1 302 Found");
        header("Location: $auth_logout_url");
    }

    private function login_with_oauthcurl($client_id, $client_secret, $oauth_url) {
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
            );
            header("HTTP/1.1 302 Found");
            header("Location: " . $oauth_url.'/token.php?'.http_build_query($data));
            exit();
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
}
