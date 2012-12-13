<h1 align="center">Smart DDns设计</h1>

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
        <td>nginx + php-fpm</td>
    </tr>
</table>

##第一期  动态DNS功能

本期主要实现动态DNS的功能，及用户的IP修改后能方便地进行修改。

__动态DNS的Zone：__d.corp.anjuke.com<br>
__用户的动态DNS记录：__[xxx.]${username}.d.corp.anjuke.com

用户的动态DNS记录类型均为A记录。其中，${username}为域账户名，xxx可已用户自定义

__${username}.d.corp.anjuke.com：__用户只可以修改记录值
__xxx.${username}.d.corp.anjuke.com：__用户可以增删改

###主要功能模块

* OAuth登录（1.0）
* ${username}.d.corp.anjuke.com的修改（1.0）
* __xxx.${username}.d.corp.anjuke.com的增删改（1.1）
* 开机自动更新的api和脚本（1.1）

##第二期  Dev域名

to be continued...
