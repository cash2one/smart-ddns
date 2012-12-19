<?php
/*
 * This is development enviroment config, if production enviroment config is
 * different, define it in the file below.
 */
define('PRODUCTION_CONFIG', '/home/evans/ddns/config.php');

//DB config
define('DB_HOST', '192.168.1.103');
define('DB_USER', 'caixh');
define('DB_PASS', 'caixh123');
define('DB_NAME', 'ddns');

//OAuth config
define('OAUTH_URL', 'https://auth.corp.anjuke.com');
define('OAUTH_ID', 'ddns');
define('OAUTH_SECRET', 'b627ada1');

//Dir config
define('HTML', 'pages/');

$zone = array (
    "dev.anjuke.com",
    "dev.aifang.com",
    "dev.haozu.com",
    "dev.jinpu.com",
);

//Load production config
if(file_exists(PRODUCTION_CONFIG)) {
    require_once(PRODUCTION_CONFIG);
}
