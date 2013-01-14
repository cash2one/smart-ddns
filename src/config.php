<?php
error_reporting(-1);
$config = array (
    /*
     * This is development enviroment config, if production enviroment config is
     * different, define it in the file below.
     */
    'PRODUCTION_CONFIG' => '/home/www/webapps/ddns-conf/config.php',

    //DB config
    'DB_HOST' => '192.168.1.103',
    'DB_USER' => 'caixh',
    'DB_PASS' => 'caixh123',
    'DB_NAME' => 'ddns',
     
    //OAuth config
    'OAUTH_URL' => 'https://auth.corp.anjuke.com',
    'OAUTH_ID' => 'ddns',
    'OAUTH_SECRET' => 'b627ada1',

    //File config
    'TEMPLATE' => 'd.corp.anjuke.com.template',
    'FILE' => 'd.corp.anjuke.com',
    'DEVTEMPLATE'=>'zone.template',
    'DEVFILE'=>array(
        'dev.anjuke.com',
        'dev.aifang.com',
        'dev.haozu.com',
        'dev.jinpu.com',
    ),

    'CONFIG_DIR' => 'dirname(__FILE__)',

    //shell config
    'CONFIGTEST' => 'ls',
    'RELOAD' => 'echo "ok">/tmp/reload_test',

    'zone' => array (
        "dev.anjuke.com",
        "dev.aifang.com",
        "dev.haozu.com",
        "dev.jinpu.com",
    ),
);

//Load production config
if(file_exists($config['PRODUCTION_CONFIG'])) {
    require_once($config['PRODUCTION_CONFIG']);
}
