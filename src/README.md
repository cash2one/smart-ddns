##开发环境数据库

__host__: 192.168.1.103<br/>
__user__: caixh<br/>
__pass__: caixh123<br/>
__db__: ddns<br/>

    CREATE TABLE `dev_record` (
        `id` int(11) NOT NULL auto_increment,
        `name` varchar(128) NOT NULL,
        `zone` varchar(64) NOT NULL,
        `type` enum('A','CNAME') NOT NULL,
        `value` varchar(256) NOT NULL,
        `owner` varchar(64) NOT NULL,
        PRIMARY KEY  (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8
