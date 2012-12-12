$ORIGIN .
$TTL 600	; 10 minutes
dev.jinpu.com		IN SOA	dev.jinpu.com. root.dev.jinpu.com. (
				2011032342 ; serial
				86400      ; refresh (1 day)
				259200     ; retry (3 days)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	ns.dev.jinpu.com.
$ORIGIN dev.jinpu.com.
$TTL 86400	; 1 day
*			A	172.23.29.166
$ORIGIN bbs.dev.jinpu.com.
*			A	172.23.29.166
$ORIGIN cathy.dev.jinpu.com.
*			A	192.168.53.12
$ORIGIN dev.jinpu.com.
cjtest003		A	192.168.1.1
db			A	172.23.29.167
$TTL 600	; 10 minutes
eyong			A	192.168.1.168
$ORIGIN eyong.dev.jinpu.com.
*			A	192.168.1.168
$ORIGIN dev.jinpu.com.
feistel			A	192.168.201.133
$ORIGIN feistel.dev.jinpu.com.
*			A	192.168.201.133
$ORIGIN dev.jinpu.com.
git			A	172.23.29.166
$ORIGIN git.dev.jinpu.com.
*			A	192.168.1.82
$ORIGIN dev.jinpu.com.
hmq			A	192.168.201.135
$ORIGIN hmq.dev.jinpu.com.
*			A	192.168.201.135
$ORIGIN dev.jinpu.com.
$TTL 86400	; 1 day
job			A	172.23.29.170
$TTL 3600	; 1 hour
leon			A	192.168.1.186
$TTL 600	; 10 minutes
liuyang			A	192.168.201.130
$ORIGIN liuyang.dev.jinpu.com.
*			A	192.168.201.130
$ORIGIN dev.jinpu.com.
local			A	127.0.0.1
$ORIGIN local.dev.jinpu.com.
*			A	127.0.0.1
$ORIGIN dev.jinpu.com.
macbuild		A	192.168.1.82
$ORIGIN macbuild.dev.jinpu.com.
*			A	192.168.1.82
$ORIGIN dev.jinpu.com.
ns			A	192.168.1.100
$TTL 86400	; 1 day
pic1			A	172.23.29.169
smb			A	172.23.29.166
$TTL 600	; 10 minutes
smyang			A	192.168.201.138
$ORIGIN smyang.dev.jinpu.com.
*			A	192.168.201.138
$ORIGIN dev.jinpu.com.
$TTL 86400	; 1 day
solr			A	172.23.29.168
upd1			A	172.23.29.169
$TTL 600	; 10 minutes
wbli			A	192.168.201.141
$ORIGIN wbli.dev.jinpu.com.
*			A	192.168.201.141
$ORIGIN dev.jinpu.com.
ylx			A	192.168.1.123
			A	192.168.1.186
$ORIGIN ylx.dev.jinpu.com.
*			A	192.168.1.123
$ORIGIN dev.jinpu.com.
$TTL 86400	; 1 day
zhengchaotest8		A	10.10.3.8
zhengchaotest9		A	10.10.3.8
