<h1 align="center">Smart DDns设计</h1>

##概述

为了方便大家上网，IT部门准备将静态分配IP地址改为DHCP获取IP地址。这样就引发了一个问题：每个开发机的IP地址会变化，这样开发域名就得经常更新解析。通常的做法是发ticket给SA，由SA修改DNS记录，但这样不仅不够及时也会增加SA的工作负担。Smart DDns就是要解决这个问题，让程序员自己去__快速__、__方便__地更新DNS。

##基本信息

名称：Smart DDns<br/>
全名：Smart Dev DNS<br/>
人员：王根意（项目组长）、肖云龙、杜一凡<br/>
时间：共2个半星期，2012-12-12 ～ 2013-12-28<br/>

##部署环境

<table>
    <tr>
        <td><b>域名</b></td>
        <td>ddns.corp.anjuke.com</td>
    </tr>
    <tr>
        <td><b>部署机器</b></td>
        <td>192.168.1.100</td>
    </tr>
    <tr>
        <td><b>环境</b></td>
        <td>bind9 + nginx + php-fpm</td>
    </tr>
</table>

##第一期  动态DNS功能

###需求

本期主要实现动态DNS的功能，及用户的IP修改后能方便地进行修改。

__动态DNS的Zone：__d.corp.anjuke.com<br/>
__用户的动态DNS记录：__[xxx.]${username}.d.corp.anjuke.com<br/>

用户的动态DNS记录类型均为A记录。其中，${username}为域账户名，xxx为用户自定义

__${username}.d.corp.anjuke.com：__用户只可以修改记录值<br/>
__xxx.${username}.d.corp.anjuke.com：__用户可以增删改<br/>

###主要功能模块

* OAuth登录（1.0）
* ${username}.d.corp.anjuke.com的修改（1.0）
* xxx.${username}.d.corp.anjuke.com的增删改（1.1）
* 开机自动更新的api和脚本（1.1）

###数据表

    CREATE TABLE `dynamic_record` (
      `id` int(11) NOT NULL auto_increment,
      `name` varchar(128) NOT NULL COMMENT '记录名',
      `value` varchar(256) NOT NULL COMMENT '记录值',
      `owner` varchar(64) NOT NULL COMMENT '所属用户',
      PRIMARY KEY  (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

    CREATE TABLE `user` (
      `username` varchar(64) NOT NULL COMMENT '域账户名',
      `key` varchar(64) NOT NULL COMMENT '加密用的key',
      UNIQUE KEY `username` (`username`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8

###技术点

####${username}.d.corp.anjuke.com的动态解析

该功能主要是通过动态生成bind9的zone文件实现。用户通过OAuth认证登录到系统，修改了自己的DNS记录后，php根据写好的模板和MySQL数据库里面的DNS记录重新生成Zone文件，然后再执行Reload bind9的操作，就实现了动态解析的功能。

####一个用户有多个IP

这个需求通过${username}.d.corp.anjuke.com的子域名实现，如windows.${username}.d.corp.anjuke.com指向用户的window主机。用户拥有这些子域名的完全控制权，可以增删改，同样在变动过后Reload bind9。

####开机自动更新DNS记录的API

登录到Smart DDns系统会有一个自动更新API的链接，这个连接有用户名、加密过的密码、要修改的记录和记录值这四个参数，开机自动调用这个API就实现了自动更新。密码加密功能：每个用户会有一个随机生成的key存放到数据库中，加密过的密码到服务器端再根据key解密。

##第二期  Dev域名

###主要功能点

* dev域名的绑定
* api可以修改IP，以及安全加固
* 操作log的记录
* help页面，也即宣传页面

###数据表

    CREATE TABLE `log` (
      `id` int(11) NOT NULL auto_increment,
      `act_time` datetime NOT NULL COMMENT '操作时间',
      `user` varchar(64) NOT NULL COMMENT '操作者',
      `content` text NOT NULL COMMENT '操作内容',
      PRIMARY KEY  (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8

###技术实现

####dev域名的绑定

在动态DNS的界面会有一个操作按钮BindDevDns，将所有某个具体用户的所有Dev域名包括泛解析CNAME到当前的某条动态解析，同样生成配置文件、重载。

####操作日志的记录

如果用户属于配置文件里面的管理员，菜单项会有日志一项，对象的每个涉及数据库的操作，都会记录到日志，日志有分页和查找功能。

####api安全

签名，非对称加密
