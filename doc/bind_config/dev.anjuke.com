$ORIGIN .
$TTL 3600	; 1 hour
dev.anjuke.com		IN SOA	mouse.dev.anjuke.com. root.dev.anjuke.com. (
				2012112601 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
$TTL 600	; 10 minutes
			NS	ns.dev.anjuke.com.
$TTL 3600	; 1 hour
			A	192.168.1.96
$ORIGIN dev.anjuke.com.
xinyuanchen             A       192.168.1.100
wintonzhang             A       192.168.1.100
*			CNAME	donkey
$TTL 600	; 10 minutes
alan			A	192.168.1.17
$ORIGIN alan.dev.anjuke.com.
*			A	192.168.1.17
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
api			A	192.168.201.57
$ORIGIN api.dev.anjuke.com.
*                     A       192.168.201.57

$TTL 600	; 10 minutes
baijian			A	192.168.201.228
$ORIGIN baijian.dev.anjuke.com.
*			A	192.168.201.228
$ORIGIN dev.anjuke.com.
blue			A	192.168.1.218
$ORIGIN blue.dev.anjuke.com.
*			CNAME	blue.dev.anjuke.com.


$ORIGIN dev.anjuke.com.
shally			A	192.168.201.71
$ORIGIN shally.dev.anjuke.com.
*			CNAME	shally.dev.anjuke.com.


$ORIGIN dev.anjuke.com.
zhangjianliu			A	192.168.201.72
$ORIGIN zhangjianliu.dev.anjuke.com.
*			CNAME	zhangjianliu.dev.anjuke.com.


$ORIGIN dev.anjuke.com.
jay			A	192.168.1.25
$ORIGIN jay.dev.anjuke.com.
*			CNAME	jay.dev.anjuke.com.


$ORIGIN dev.anjuke.com.
rocky			A	192.168.1.174
$ORIGIN rocky.dev.anjuke.com.
*			CNAME	rocky.dev.anjuke.com.



$ORIGIN dev.anjuke.com.
box			A	192.168.201.151
pypi			A	192.168.1.81
$ORIGIN box.dev.anjuke.com.
*			A	192.168.201.151
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
c01			A	10.11.3.228
c02			A	10.11.3.229
c03			A	10.11.3.230
c04			A	10.11.3.231
c05			A	10.11.3.232
c06			A	10.11.3.233
c07			A	10.11.3.234
c08			A	10.11.3.235
c09			A	10.11.3.236
c10			A	10.11.3.237
leon			A	192.168.201.46
$TTL 3600	; 1 hour
caixh			A	192.168.1.89
$ORIGIN caixh.dev.anjuke.com.
*			CNAME	caixh.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
caixh2			A	192.168.1.89
$ORIGIN caixh2.dev.anjuke.com.
*			CNAME	caixh2.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
cecil			A	192.168.1.72
$ORIGIN cecil.dev.anjuke.com.
*			CNAME	cecil.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
ch98			A	192.168.1.78
$ORIGIN ch98.dev.anjuke.com.
*			CNAME	ch98.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
chen98			A	192.168.1.79
$ORIGIN chen98.dev.anjuke.com.
*			CNAME	chen98.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
chenlei			A	192.168.1.59
$ORIGIN chenlei.dev.anjuke.com.
*			A	192.168.1.59
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
chenxiang		A	192.168.201.254
$ORIGIN chenxiang.dev.anjuke.com.
*			A	192.168.201.254
$ORIGIN chli.dev.anjuke.com.
$TTL 600	; 10 minutes
*			A	192.168.20.70
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
cjtest004		A	192.168.1.1
cjtest005		A	192.168.1.122
$TTL 600	; 10 minutes
cswang			A	192.168.1.3
$ORIGIN cswang.dev.anjuke.com.
*			A	192.168.1.3
$ORIGIN cunhuifan.dev.anjuke.com.
$TTL 86400	; 1 day
*			A	192.168.201.246
$ORIGIN alan.dev.dev.anjuke.com.
$TTL 600	; 10 minutes
*			A	192.168.1.17
$ORIGIN dev.anjuke.com.
$TTL 3600	; 1 hour
donkey			A	192.168.1.96
$TTL 600	; 10 minutes
dzs			A	192.168.1.153
$ORIGIN dzs.dev.anjuke.com.
*			A	192.168.1.153
$ORIGIN dev.anjuke.com.
eddie			A	192.168.201.203
$ORIGIN eddie.dev.anjuke.com.
*			A	192.168.201.203
$ORIGIN dev.anjuke.com.
$TTL 3600	; 1 hour
enzhang			A	192.168.1.81
$ORIGIN enzhang.dev.anjuke.com.
*			CNAME	enzhang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
erning			A	192.168.1.80
$ORIGIN erning.dev.anjuke.com.
*			CNAME	erning.dev.anjuke.com.
$ORIGIN eva.dev.anjuke.com.
$TTL 86400	; 1 day
*			A	172.23.29.166
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
eyong			A	192.168.1.168
$ORIGIN eyong.dev.anjuke.com.
*			A	192.168.1.168
$ORIGIN dev.anjuke.com.
feistel			A	192.168.201.133
$ORIGIN feistel.dev.anjuke.com.
*			A	192.168.201.133
$ORIGIN dev.anjuke.com.
git			A	192.168.1.82
$ORIGIN git.dev.anjuke.com.
*			A	192.168.1.82
$ORIGIN group.dev.anjuke.com.
$TTL 86400	; 1 day
*			A	192.168.201.57
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
guya			A	192.168.1.170
$ORIGIN guya.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	guya.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
hanhor			A	192.168.201.241
$TTL 600	; 10 minutes
hejun			A	192.168.1.70
$ORIGIN hejun.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	hejun.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
hhfu			A	192.168.201.148
$ORIGIN hhfu.dev.anjuke.com.
*			A	192.168.201.148
$ORIGIN dev.anjuke.com.
hlan			A	192.168.1.167
$ORIGIN hlan.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	hlan.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
hli			A	192.168.201.173
$ORIGIN hli.dev.anjuke.com.
*			A	192.168.201.173
$ORIGIN dev.anjuke.com.
hmq			A	192.168.201.135
$ORIGIN hmq.dev.anjuke.com.
*			A	192.168.201.135
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
hr			A	192.168.1.2
htlv			A	192.168.201.154
$ORIGIN htlv.dev.anjuke.com.
*			A	192.168.201.154
$ORIGIN dev.anjuke.com.
icompanyapi		A	192.168.201.190
$TTL 3600	; 1 hour
ivyliang		A	192.168.1.72
$ORIGIN ivyliang.dev.anjuke.com.
*			CNAME	ivyliang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
jackie			A	192.168.1.174
$ORIGIN jackie.dev.anjuke.com.
*			CNAME	jackie.dev.anjuke.com.
$ORIGIN jamesjiang.dev.anjuke.com.
$TTL 86400	; 1 day
*			A	192.168.201.185
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
java			A	192.168.1.147
$ORIGIN java.dev.anjuke.com.
$TTL 86400	; 1 day
fp01			A	192.168.201.190
fp02			A	192.168.201.190
fp03			A	192.168.201.190
fp04			A	192.168.201.190
fp05			A	192.168.201.190
fp06			A	192.168.201.190
fp07			A	192.168.201.190
fp08			A	192.168.201.190
fp09			A	192.168.201.190
fp10			A	192.168.201.190
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
jerry			A	192.168.201.172
$ORIGIN jerry.dev.anjuke.com.
*			A	192.168.201.172
$TTL 86400	; 1 day
bbs			A	192.168.201.172
include			A	192.168.201.172
one			A	192.168.201.172
vip			A	192.168.201.172
$ORIGIN dev.anjuke.com.
jessie			A	192.168.201.182
$ORIGIN jessie.dev.anjuke.com.
*			A	192.168.201.182
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
jgcao			A	192.168.1.233
$ORIGIN jgcao.dev.anjuke.com.
*			CNAME	jgcao.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
jinpu			A	192.168.1.82
$ORIGIN jinpu.dev.anjuke.com.
*			A	192.168.1.82
$ORIGIN dev.anjuke.com.
jock			A	192.168.1.172
$ORIGIN jock.dev.anjuke.com.
*			CNAME	jock.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
jockhu			A	192.168.1.172
$ORIGIN jockhu.dev.anjuke.com.
*			A	192.168.1.172
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
jusenzhu		A	192.168.201.177
$ORIGIN jusenzhu.dev.anjuke.com.
*			A	192.168.201.177
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
justin			A	192.168.1.184
$ORIGIN justin.dev.anjuke.com.
*			CNAME	justin.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
jyang			A	192.168.1.165
$ORIGIN jyang.dev.anjuke.com.
*			CNAME	jyang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
kakie			A	192.168.10.168
			A	192.168.181.96
$ORIGIN kakie.dev.anjuke.com.
*			A	192.168.10.201
			A	192.168.181.96
shanghai		A	192.168.181.96
$ORIGIN dev.anjuke.com.
kavin			A	192.168.1.216
$ORIGIN kavin.dev.anjuke.com.
*			A	192.168.1.216
$ORIGIN dev.anjuke.com.
krisjiang		A	192.168.1.208
$ORIGIN krisjiang.dev.anjuke.com.
*			CNAME	krisjiang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
ldap			A	192.168.201.62
$ORIGIN ldap.dev.anjuke.com.
*			A	192.168.201.62
$ORIGIN dev.anjuke.com.
liang			A	192.168.1.188
$TTL 600	; 10 minutes
liuwl			A	192.168.201.107
$ORIGIN liuwl.dev.anjuke.com.
*			A	192.168.201.107
$ORIGIN dev.anjuke.com.
liuyang			A	192.168.201.130
$ORIGIN liuyang.dev.anjuke.com.
*			A	192.168.201.130
$ORIGIN dev.anjuke.com.
lli			A	192.168.1.164
$ORIGIN lli.dev.anjuke.com.
*			CNAME	lli.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
local			A	127.0.0.1
$ORIGIN local.dev.anjuke.com.
*			A	127.0.0.1
lzhang			A	192.168.1.188
$ORIGIN lukin.dev.anjuke.com.
*			A	192.168.201.198
$ORIGIN lzhang.dev.anjuke.com.
*			CNAME	lzhang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
macbuild		A	192.168.1.82
$ORIGIN macbuild.dev.anjuke.com.
*			A	192.168.1.82
$ORIGIN dev.anjuke.com.
maggie			A	192.168.1.49
$ORIGIN maggie.dev.anjuke.com.
*			A	192.168.1.49
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
member			A	192.168.201.57
minjiewang		A	192.168.201.227
$ORIGIN minjiewang.dev.anjuke.com.
$TTL 600	; 10 minutes
*			A	192.168.201.227
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
monitor			A	192.168.1.100
$TTL 3600	; 1 hour
mouse			A	192.168.1.97
$TTL 600	; 10 minutes
nginx-test		A	192.168.10.200
ns			A	192.168.1.100
one			A	192.168.1.100
$ORIGIN one.dev.anjuke.com.
*			CNAME	one.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
peggy			A	192.168.1.191
$ORIGIN peggy.dev.anjuke.com.
*			CNAME	peggy.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
peterzhu		A	192.168.1.9
$ORIGIN peterzhu.dev.anjuke.com.
*			A	192.168.1.9
$ORIGIN dev.anjuke.com.
phil			A	192.168.1.160
$ORIGIN phil.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	phil.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
project			A	192.168.201.212
$TTL 3600	; 1 hour
projects		A	192.168.1.100
$TTL 600	; 10 minutes
			MX	10 mail.projects
$ORIGIN projects.dev.anjuke.com.
mail			A	192.168.1.100
$ORIGIN dev.anjuke.com.
pyzhao			A	192.168.1.52
$ORIGIN pyzhao.dev.anjuke.com.
*			A	192.168.1.52
$ORIGIN dev.anjuke.com.
qiangwang		A	192.168.201.252
$ORIGIN qiangwang.dev.anjuke.com.
*			A	192.168.201.252
$ORIGIN dev.anjuke.com.
qli			A	192.168.1.166
$ORIGIN qli.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	qli.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
raywang			A	192.168.20.73
$ORIGIN raywang.dev.anjuke.com.
*			CNAME	raywang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
river			A	192.168.1.176
$ORIGIN river.dev.anjuke.com.
*			CNAME	river.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
sdhou			A	192.168.1.14
$ORIGIN sdhou.dev.anjuke.com.
*			A	192.168.1.14
$ORIGIN set.dev.anjuke.com.
$TTL 86400	; 1 day
*			A	172.23.29.166
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
sky			A	192.168.1.170
$ORIGIN sky.dev.anjuke.com.
*			CNAME	sky.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
smyang			A	192.168.201.138
$ORIGIN smyang.dev.anjuke.com.
*			A	192.168.201.138
$ORIGIN sonic.dev.anjuke.com.
*			CNAME	www
www			A	192.168.1.180
$ORIGIN dev.anjuke.com.
sysdev			A	192.168.1.100
$ORIGIN sysdev.dev.anjuke.com.
*			A	192.168.1.100
$ORIGIN dev.anjuke.com.
terry			A	192.168.1.183
$ORIGIN terry.dev.anjuke.com.
*			CNAME	terry.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 3600	; 1 hour
test			A	192.168.1.249
$ORIGIN test.dev.anjuke.com.
*			CNAME	test.dev.anjuke.com.
$TTL 86400	; 1 day
wangling		A	192.168.1.18
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
test1			A	192.168.10.200
test2			A	192.168.10.200
test3			A	192.168.10.200
think			A	192.168.201.163
$ORIGIN think.dev.anjuke.com.
*			A	192.168.201.163
$ORIGIN dev.anjuke.com.
tom			A	192.168.1.175
$ORIGIN tom.dev.anjuke.com.
*			CNAME	tom.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
tony			A	192.168.1.89
$ORIGIN tony.dev.anjuke.com.
*			CNAME	tony.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 3600	; 1 hour
trac			A	192.168.1.92
$TTL 600	; 10 minutes
tristan			A	192.168.201.101
$ORIGIN tristan.dev.anjuke.com.
*			A	192.168.201.101
$ORIGIN dev.anjuke.com.
turtle			A	192.168.1.206
$ORIGIN turtle.dev.anjuke.com.
*			CNAME	turtle.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
vingo			A	192.168.1.234
$ORIGIN vingo.dev.anjuke.com.
*			A	192.168.1.234
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
wade			A	192.168.1.236
$ORIGIN wade.dev.anjuke.com.
$TTL 600	; 10 minutes
*			A	192.168.1.236
$ORIGIN dev.anjuke.com.
wbli			A	192.168.201.141
$ORIGIN wbli.dev.anjuke.com.
*			A	192.168.201.141
$ORIGIN dev.anjuke.com.
wgy			A	192.168.1.100
$ORIGIN wgy.dev.anjuke.com.
*			A	192.168.1.100

$ORIGIN dev.anjuke.com.
wanggenyi		A	192.168.1.100
$ORIGIN wanggenyi.dev.anjuke.com.
*			A	192.168.1.100

$ORIGIN dev.anjuke.com.
$TTL 3600	; 1 hour
willhe			A	192.168.1.71
$ORIGIN willhe.dev.anjuke.com.
*			CNAME	willhe.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
william			A	192.168.201.162
$ORIGIN william.dev.anjuke.com.
*			A	192.168.201.162
$ORIGIN dev.anjuke.com.
williamwang		A	192.168.201.230
$ORIGIN williamwang.dev.anjuke.com.
*			A	192.168.201.230
$ORIGIN dev.anjuke.com.
xhe			A	192.168.1.113
$ORIGIN xhe.dev.anjuke.com.
*			CNAME	xhe.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
xiazh			A	192.168.1.112
$ORIGIN xiazh.dev.anjuke.com.
*			CNAME	xiazh.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
xybai			A	192.168.201.195
$ORIGIN xybai.dev.anjuke.com.
*			A	192.168.201.195
$ORIGIN yangliang.dev.anjuke.com.
$TTL 600	; 10 minutes
*			CNAME	yannliang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
yangliu			A	192.168.201.225
$ORIGIN yangliu.dev.anjuke.com.
*			A	192.168.201.225
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
yannliang		A	192.168.1.158
$ORIGIN yannliang.dev.anjuke.com.
*			CNAME	yannliang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 3600	; 1 hour
ycyang			A	192.168.2.81
$ORIGIN ycyang.dev.anjuke.com.
*			CNAME	ycyang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
yelanxin		A	192.168.1.186
$ORIGIN yelanxin.dev.anjuke.com.
*			CNAME	yelanxin.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
yelanxin-test		A	192.168.1.186
yelanxin-test2		A	192.168.1.186
yelanxin-test3		A	192.168.1.186
yelanxin-test4		A	192.168.1.186
ylx			A	192.168.1.123
			A	192.168.1.186
$ORIGIN ylx.dev.anjuke.com.
*			A	192.168.1.123
			A	192.168.1.186
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
ylx1234			A	192.168.1.186
ylxbook			A	192.168.1.121
$TTL 600	; 10 minutes
youland			A	192.168.1.114
$ORIGIN youland.dev.anjuke.com.
*			CNAME	youland.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
yyang			A	192.168.1.168
$ORIGIN yyang.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	yyang.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 86400	; 1 day
zhengchaotest		A	192.168.10.247
$ORIGIN zhishanwu.dev.anjuke.com.
*			A	192.168.201.87
$ORIGIN zhiwensun.dev.anjuke.com.
$TTL 600	; 10 minutes
*			A	192.168.201.197
$ORIGIN dev.anjuke.com.
zmhu			A	192.168.1.151
$ORIGIN zmhu.dev.anjuke.com.
$TTL 3600	; 1 hour
*			CNAME	zmhu.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
zmhudev			A	192.168.1.87
$ORIGIN zmhudev.dev.anjuke.com.
*			CNAME	zmhudev.dev.anjuke.com.
$ORIGIN dev.anjuke.com.
$TTL 600	; 10 minutes
zorro-bbs		A	10.10.9.102
zorro-nginx		A	192.168.10.241
zorro-tc		A	10.10.9.102
$ORIGIN zorrozuo.dev.anjuke.com.
*			A	192.168.201.46

$ORIGIN dev.anjuke.com.
ipublish		A	192.168.201.57
ios                     A       192.168.201.214;杨杰
*.ios                   A       192.168.201.214;杨杰
shixi                   A       192.168.10.34;实习生测试
zero                   A        192.168.201.66

$ORIGIN dev.anjuke.com.
android			A	192.168.1.161
$ORIGIN android.dev.anjuke.com.
*			A	192.168.1.161

$ORIGIN dev.anjuke.com.
yundu                   A       192.168.201.99
$ORIGIN yundu.dev.anjuke.com.
*                       A       192.168.201.99
