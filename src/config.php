<?php
/*
 * This is dev env config, if product enviroment config is
 * different, define it in the file below.
 */
define('PRODUCT_ENV', '/home/evans/ddns/config.php');

//DB config
define('DB_HOST', '192.168.1.103');
define('DB_USER', 'caixh');
define('DB_PASS', 'caixh123');
define('DB_NAME', 'ddns');

//Dir config
define('HTML', 'pages/');

$zone = array (
    "dev.anjuke.com",
    "dev.aifang.com",
    "dev.haozu.com",
    "dev.jinpu.com",
);

//Load product env config
if(file_exists(PRODUCT_ENV)) {
    require_once(PRODUCT_ENV);
}
