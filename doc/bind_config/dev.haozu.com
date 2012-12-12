$ORIGIN .
$TTL 38400	; 10 hours 40 minutes
dev.haozu.com		IN SOA	app00-001. root.dev.haozu.com. (
				12498208   ; serial
				10800      ; refresh (3 hours)
				60         ; retry (1 minute)
				604800     ; expire (1 week)
				38400      ; minimum (10 hours 40 minutes)
				)
			NS	app00-001.
			A	192.168.1.96
$ORIGIN dev.haozu.com.
$TTL 600	; 10 minutes

*			A	192.168.180.101
$ORIGIN dev.haozu.com.
yshang                    A       192.168.187.1
$ORIGIN yshang.dev.haozu.com.
*                       A       192.168.187.1


$ORIGIN dev.haozu.com.
wesleyxu                   A       192.168.187.2
$ORIGIN wesleyxu.dev.haozu.com.
*                       A       192.168.187.2


$ORIGIN dev.haozu.com.
liuxd                   A       192.168.187.3
$ORIGIN liuxd.dev.haozu.com.
*                       A       192.168.187.3


$ORIGIN dev.haozu.com.
aco                   A       192.168.187.4
$ORIGIN aco.dev.haozu.com.
*                       A       192.168.187.4

$ORIGIN dev.haozu.com.
floyd                   A       192.168.187.5
$ORIGIN floyd.dev.haozu.com.
*                       A       192.168.187.5


$ORIGIN dev.haozu.com.
banner                  A       192.168.187.6
$ORIGIN banner.dev.haozu.com.
*                       A       192.168.187.6

$ORIGIN dev.haozu.com.
bfang                  A       192.168.187.7
$ORIGIN bfang.dev.haozu.com.
*                       A       192.168.187.7

$ORIGIN dev.haozu.com.
lilyfang                  A       192.168.187.8
$ORIGIN lilyfang.dev.haozu.com.
*                       A       192.168.187.8

$ORIGIN dev.haozu.com.
jhu                  A       192.168.187.9
$ORIGIN jhu.dev.haozu.com.
*                       A       192.168.187.9

$ORIGIN dev.haozu.com.
xianjin                  A       192.168.187.11
$ORIGIN xianjin.dev.haozu.com.
*                       A       192.168.187.11


$ORIGIN dev.haozu.com.
liujia                  A       192.168.187.12
$ORIGIN liujia.dev.haozu.com.
*                       A       192.168.187.12



$ORIGIN dev.haozu.com.
lili                  A       192.168.187.13
$ORIGIN lili.dev.haozu.com.
*                       A       192.168.187.13


$ORIGIN dev.haozu.com.
biqing                  A       192.168.187.14
$ORIGIN biqing.dev.haozu.com.
*                       A       192.168.187.14


$ORIGIN dev.haozu.com.
sofock                  A       192.168.187.15
$ORIGIN sofock.dev.haozu.com.
*                       A       192.168.187.15



$ORIGIN dev.haozu.com.
zhxia                  A       192.168.187.16
$ORIGIN zhxia.dev.haozu.com.
*                       A       192.168.187.16


$ORIGIN jackie.dev.haozu.com.
$TTL 86400	; 1 day
*			A	192.168.1.174
$ORIGIN local.dev.haozu.com.
$TTL 600	; 10 minutes
*			A	127.0.0.1
$ORIGIN dev.haozu.com.
$TTL 86400	; 1 day
projects		A	192.168.201.212
$ORIGIN sonic.dev.haozu.com.
$TTL 600	; 10 minutes
*			CNAME	www
www			A	192.168.1.180
$ORIGIN dev.haozu.com.
$TTL 86400	; 1 day
ylx			A	192.168.1.186
