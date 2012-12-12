$ORIGIN .
$TTL 3600	; 1 hour
dev.aifang.com		IN SOA	mouse.dev.aifang.com. root.dev.aifang.com. (
				2012090513 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	mouse.dev.aifang.com.
$TTL 600	; 10 minutes
			A	192.168.1.24
$ORIGIN dev.aifang.com.
*			CNAME 	dev.aifang.com.
$TTL 86400	; 1 day
$ORIGIN dev.aifang.com.
alan			A	192.168.181.21
$ORIGIN alan.dev.aifang.com.
*			A	192.168.1.17
			A	192.168.181.21
$ORIGIN dev.aifang.com.
andy			A	192.168.181.49
$ORIGIN andy.dev.aifang.com.
$TTL 600	; 10 minutes
*			A	192.168.181.49
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
bonny			A	192.168.181.45
$ORIGIN bonny.dev.aifang.com.
*			A	192.168.181.45
$ORIGIN dev.aifang.com.
box			A	192.168.181.53
$ORIGIN box.dev.aifang.com.
*			A	192.168.181.53
			A	192.168.201.151

$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
caixh			A	192.168.1.89
$ORIGIN caixh.dev.aifang.com.
*			CNAME	caixh.dev.aifang.com.
$ORIGIN dev.aifang.com.
caixh2			A	192.168.1.89
$ORIGIN caixh2.dev.aifang.com.
*			CNAME	caixh2.dev.aifang.com.
$ORIGIN cathy.dev.aifang.com.
$TTL 86400	; 1 day
*			A	192.168.1.216
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
cecil			A	192.168.1.72
$ORIGIN cecil.dev.aifang.com.
*			CNAME	cecil.dev.aifang.com.
$ORIGIN dev.aifang.com.
ch98			A	192.168.1.78
$ORIGIN ch98.dev.aifang.com.
*			CNAME	ch98.dev.aifang.com.
$ORIGIN dev.aifang.com.
chen98			A	192.168.1.79
$ORIGIN chen98.dev.aifang.com.
*			CNAME	chen98.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
chenlei			A	192.168.1.59
$ORIGIN chenlei.dev.aifang.com.
*			A	192.168.1.59
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
cjzhang			A	192.168.181.46
$ORIGIN cjzhang.dev.aifang.com.
*			A	192.168.181.46
$ORIGIN dev.aifang.com.
cold			A	192.168.181.40
$ORIGIN cold.dev.aifang.com.
*			A	192.168.181.40
			A	192.168.201.224


$ORIGIN dev.aifang.com.
jamesjiang			A	192.168.181.97
$ORIGIN jamesjiang.dev.aifang.com.
*			A	192.168.181.97

$ORIGIN dev.aifang.com.
tyang			A	192.168.181.101
$ORIGIN tyang.dev.aifang.com.
*			A	192.168.181.101


$ORIGIN dev.aifang.com.
ray			A	192.168.181.109
$ORIGIN ray.dev.aifang.com.
*			A	192.168.181.109


$ORIGIN dev.aifang.com.
davidshen			A	192.168.181.108
$ORIGIN davidshen.dev.aifang.com.
*			A	192.168.181.108


$ORIGIN dev.aifang.com.
kyou			A	192.168.181.110
$ORIGIN kyou.dev.aifang.com.
*			A	192.168.181.110


$ORIGIN dev.aifang.com.
dinlin			A	192.168.181.111
$ORIGIN dinlin.dev.aifang.com.
*			A	192.168.181.111


$ORIGIN dev.aifang.com.
wn			A	192.168.181.112
$ORIGIN wn.dev.aifang.com.
*			A	192.168.181.112

















$ORIGIN dev.aifang.com.
tyangweb			A	192.168.181.101
$ORIGIN tyangweb.dev.aifang.com.
*			A	192.168.181.101

$ORIGIN dev.aifang.com.
sszweb			A	192.168.181.92
$ORIGIN sszweb.dev.aifang.com.
*			A	192.168.181.92


$ORIGIN dev.aifang.com.
wyqweb			A	192.168.181.67
$ORIGIN wyqweb.dev.aifang.com.
*			A	192.168.181.67

$ORIGIN dev.aifang.com.
wyqweb			A	192.168.181.67
$ORIGIN wyqweb.dev.aifang.com.
*			A	192.168.181.67


$ORIGIN dev.aifang.com.
shz			A	192.168.181.104
$ORIGIN shz.dev.aifang.com.
*			A	192.168.181.104

$ORIGIN dev.aifang.com.
zlzhang			A	192.168.181.106
$ORIGIN zlzhang.dev.aifang.com.
*			A	192.168.181.106

$ORIGIN dev.aifang.com.
kenku			A	192.168.181.100
$ORIGIN kenku.dev.aifang.com.
*			A	192.168.181.100

$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
cswang			A	192.168.1.3
$ORIGIN cswang.dev.aifang.com.
*			A	192.168.1.3
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
david			A	192.168.181.42
$ORIGIN david.dev.aifang.com.
*			A	192.168.181.42
$ORIGIN alan.dev.dev.aifang.com.
$TTL 600	; 10 minutes
*			A	192.168.1.17
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
donkey			A	192.168.1.96
$TTL 600	; 10 minutes
dzs			A	192.168.1.153
$ORIGIN dzs.dev.aifang.com.
*			CNAME	dzs.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
enzhang			A	192.168.1.81
$ORIGIN enzhang.dev.aifang.com.
*			CNAME	enzhang.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
eric			A	192.168.201.228
$ORIGIN eric.dev.aifang.com.
*			A	192.168.201.228
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
ericchen		A	192.168.181.43
$ORIGIN ericchen.dev.aifang.com.
*			A	192.168.181.43
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
erning			A	192.168.1.80
$ORIGIN erning.dev.aifang.com.
*			CNAME	erning.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
eyong			A	192.168.1.168
$ORIGIN eyong.dev.aifang.com.
*			A	192.168.1.168
$ORIGIN dev.aifang.com.
feistel			A	192.168.201.133
$ORIGIN feistel.dev.aifang.com.
*			A	192.168.201.133
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
ffshi			A	192.168.181.24
$ORIGIN ffshi.dev.aifang.com.
*			A	192.168.1.193
			A	192.168.181.24
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
git			A	192.168.1.24
$ORIGIN git.dev.aifang.com.
*			A	192.168.1.24
$ORIGIN dev.aifang.com.
guya			CNAME	guya.dev.anjuke.com.
$ORIGIN guya.dev.aifang.com.
*			CNAME	guya.dev.anjuke.com.
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
gyzhu			A	192.168.181.28
$ORIGIN gyzhu.dev.aifang.com.
*			A	192.168.181.28
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
hejun			A	192.168.1.70
$ORIGIN hejun.dev.aifang.com.
$TTL 3600	; 1 hour
*			CNAME	hejun.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
hli			A	192.168.181.33
$ORIGIN hli.dev.aifang.com.
*			A	192.168.181.33
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
hmq			A	192.168.201.135
$ORIGIN hmq.dev.aifang.com.
*			A	192.168.201.135
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
hqyun			A	192.168.181.23
$ORIGIN hqyun.dev.aifang.com.
*			A	192.168.181.23
$ORIGIN dev.aifang.com.
htlv			A	192.168.181.41
$ORIGIN htlv.dev.aifang.com.
$TTL 600	; 10 minutes
*			A	192.168.181.41
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
ivyliang		A	192.168.1.72
$ORIGIN ivyliang.dev.aifang.com.
*			CNAME	ivyliang.dev.aifang.com.
$ORIGIN dev.aifang.com.
jerry			A	192.168.181.34
$ORIGIN jerry.dev.aifang.com.
*			A	192.168.181.34
			A	192.168.201.172
one			A	192.168.201.172
$ORIGIN dev.aifang.com.
jhzhu			A	192.168.181.52
$ORIGIN jhzhu.dev.aifang.com.
*			A	192.168.181.52
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
jinpu			A	192.168.1.82
$ORIGIN jinpu.dev.aifang.com.
*			A	192.168.1.82
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
jockchina		A	192.168.181.47
$ORIGIN jockchina.dev.aifang.com.
*			A	192.168.181.13
			A	192.168.181.47
$ORIGIN dev.aifang.com.
jockhu			A	192.168.181.13
$ORIGIN jockhu.dev.aifang.com.
*			A	192.168.181.13
jyang			CNAME	jyang.dev.anjuke.com.
$ORIGIN jyang.dev.aifang.com.
*			CNAME	jyang.dev.anjuke.com.
$ORIGIN dev.aifang.com.
kakie			A	192.168.181.96
$ORIGIN kakie.dev.aifang.com.
*			A	192.168.181.96
$ORIGIN dev.aifang.com.
lilin			A	192.168.181.22
$ORIGIN lilin.dev.aifang.com.
*			A	192.168.181.22
$ORIGIN dev.aifang.com.
liming			A	192.168.201.46
limingleon		A	192.168.201.46
$TTL 600	; 10 minutes
liuwl			A	192.168.201.107
$ORIGIN liuwl.dev.aifang.com.
*			A	192.168.201.107
$ORIGIN dev.aifang.com.
liuyang			A	192.168.201.130
$ORIGIN liuyang.dev.aifang.com.
*			A	192.168.201.130
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
liyu			A	192.168.201.220
$ORIGIN liyu.dev.aifang.com.
*			A	192.168.201.220
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
lli			A	192.168.2.84
$ORIGIN lli.dev.aifang.com.
*			CNAME	lli.dev.anjuke.com.
$ORIGIN dev.aifang.com.
local			A	127.0.0.1
$ORIGIN local.dev.aifang.com.
*			A	127.0.0.1
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
luckzcj			A	192.168.181.54
$ORIGIN luckzcj.dev.aifang.com.
*			A	192.168.181.54
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
macbuild		A	192.168.1.82
$ORIGIN macbuild.dev.aifang.com.
*			A	192.168.1.82
$ORIGIN dev.aifang.com.
maggie			A	192.168.1.49
$ORIGIN maggie.dev.aifang.com.
*			A	192.168.1.49
$ORIGIN dev.aifang.com.
me			A	127.0.0.1
$ORIGIN me.dev.aifang.com.
*			CNAME	me.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
mouse			A	192.168.1.100
$TTL 86400	; 1 day
peggy			A	192.168.181.15
$ORIGIN peggy.dev.aifang.com.
*			A	192.168.181.15
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
peterzhu		A	192.168.1.9
$ORIGIN peterzhu.dev.aifang.com.
*			A	192.168.1.9
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
phil			A	192.168.20.77
$ORIGIN phil.dev.aifang.com.
*			CNAME	phil.dev.aifang.com.
$ORIGIN dev.aifang.com.
projects		A	192.168.1.24
$TTL 86400	; 1 day
pyzhao			A	192.168.181.50
$ORIGIN pyzhao.dev.aifang.com.
*			A	192.168.1.52
			A	192.168.181.50
$ORIGIN dev.aifang.com.
qa			A	192.168.180.103
$ORIGIN qa.dev.aifang.com.
*			A	192.168.180.103
$ORIGIN dev.aifang.com.
qa2			A	192.168.180.104
$ORIGIN qa2.dev.aifang.com.
*			A	192.168.180.104
$ORIGIN dev.aifang.com.
qa3			A	192.168.180.105
$ORIGIN qa3.dev.aifang.com.
*			A	192.168.180.105
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
qli			A	192.168.20.68
$ORIGIN qli.dev.aifang.com.
*			CNAME	qli.dev.aifang.com.
$ORIGIN dev.aifang.com.
raywang			A	192.168.20.73
$ORIGIN raywang.dev.aifang.com.
*			CNAME	raywang.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
sdhou			A	192.168.1.14
$ORIGIN sdhou.dev.aifang.com.
*			A	192.168.1.14
$ORIGIN dev.aifang.com.
sky			CNAME	sky.dev.anjuke.com.
$ORIGIN sky.dev.aifang.com.
*			CNAME	sky.dev.anjuke.com.
$ORIGIN dev.aifang.com.
smyang			A	192.168.201.138
$ORIGIN smyang.dev.aifang.com.
*			A	192.168.201.138
$ORIGIN spark.dev.aifang.com.
*			A	192.168.181.56
www			A	192.168.181.56
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
sysdev			A	192.168.1.26
$ORIGIN sysdev.dev.aifang.com.
*			A	192.168.1.26
$ORIGIN dev.aifang.com.
terry			CNAME	terry.dev.anjuke.com.
$ORIGIN terry.dev.aifang.com.
*			CNAME	terry.dev.anjuke.com.
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
test			A	192.168.1.249
$ORIGIN test.dev.aifang.com.
*			CNAME	test.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
think			A	192.168.201.163
$ORIGIN think.dev.aifang.com.
*			A	192.168.201.163
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
tom			A	192.168.181.12
$ORIGIN tom.dev.aifang.com.
*			A	192.168.181.12
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
trac			A	192.168.1.92
$TTL 600	; 10 minutes
tristan			A	192.168.201.101
$ORIGIN tristan.dev.aifang.com.
*			A	192.168.201.101
$ORIGIN dev.aifang.com.
$TTL 600	; 1 day
up			A	192.168.1.24
$ORIGIN up.dev.aifang.com.
*			A	192.168.1.24
$ORIGIN wade.dev.aifang.com.
$TTL 600	; 10 minutes
*			A	192.168.1.236
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
wbli			A	192.168.181.29
$ORIGIN wbli.dev.aifang.com.
*			A	192.168.181.29
			A	192.168.201.141
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
wgy			A	192.168.201.47
$ORIGIN wgy.dev.aifang.com.
*			A	192.168.201.47
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
whzhu			A	192.168.181.27
$ORIGIN whzhu.dev.aifang.com.
*			A	192.168.181.27
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
willhe			A	192.168.1.71
$ORIGIN willhe.dev.aifang.com.
*			CNAME	willhe.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
william			A	192.168.201.162
$ORIGIN william.dev.aifang.com.
*			A	192.168.201.162
$ORIGIN dev.aifang.com.
xiazh			CNAME	xiazh.dev.anjuke.com.
$ORIGIN xiazh.dev.aifang.com.
*			CNAME	xiazh.dev.anjuke.com.
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
xqx			A	192.168.181.25
$ORIGIN xqx.dev.aifang.com.
*			A	192.168.181.25
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
yannliang		CNAME	yannliang.dev.anjuke.com.
$ORIGIN yannliang.dev.aifang.com.
*			CNAME	yannliang.dev.anjuke.com.
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
ycyang			A	192.168.2.81
$ORIGIN ycyang.dev.aifang.com.
*			CNAME	ycyang.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 600	; 10 minutes
yelanxin		A	192.168.1.186
$ORIGIN yelanxin.dev.aifang.com.
*			A	192.168.1.186
$ORIGIN dev.aifang.com.
ylx			A	192.168.1.114
			A	192.168.1.123
			A	192.168.1.186
$ORIGIN ylx.dev.aifang.com.
*			A	192.168.1.123
			A	192.168.1.186
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
ylx11			A	192.168.1.186
ylx111			A	192.168.1.186
youland			A	192.168.181.17
$ORIGIN youland.dev.aifang.com.
*			A	192.168.181.17
$ORIGIN dev.aifang.com.
yuli			A	192.168.181.39
$ORIGIN yuli.dev.aifang.com.
*			A	192.168.181.39
$ORIGIN dev.aifang.com.
$TTL 3600	; 1 hour
yyang			A	192.168.20.66
$ORIGIN yyang.dev.aifang.com.
*			CNAME	yyang.dev.aifang.com.
$ORIGIN dev.aifang.com.
$TTL 86400	; 1 day
zhxia			A	192.168.181.16
$ORIGIN zhxia.dev.aifang.com.
*			A	192.168.181.16
$ORIGIN dev.aifang.com.
zmeng			A	192.168.181.51
$ORIGIN zmeng.dev.aifang.com.
*			A	192.168.181.51
$ORIGIN zmhu.dev.aifang.com.
$TTL 600	; 10 minutes
bbs			A	192.168.2.88
$ORIGIN bbs.zmhu.dev.aifang.com.
*			CNAME	bbs.zmhu.dev.aifang.com.
$ORIGIN dev.aifang.com.
prop		A	192.168.1.68
*.prop		A	192.168.1.68

$ORIGIN dev.aifang.com.
xp1		A	192.168.1.77
*.xp1		A	192.168.1.77

$ORIGIN dev.aifang.com.
xp2		A	192.168.10.118
*.xp2		A	192.168.10.118



$ORIGIN dev.aifang.com.
	
;$INCLUDE "/var/named/chroot/var/named/dev/11.dev.aifang.com"





;add
*.local 	  A   127.0.0.1
local 		  A   127.0.0.1
java    	  A   192.168.1.23
*.java    	  A   192.168.1.23
*.alan    	  A   192.168.181.21  ;朱建华
alan    	  A   192.168.181.21  ;朱建华
*.andy    	  A   192.168.181.49  ;安红亮
andy    	  A   192.168.181.49  ;安红亮
*.bonny   	  A   192.168.181.45  ;赵宇光
bonny   	  A   192.168.181.45  ;赵宇光
*.box     	  A   192.168.181.53  ;施丰丰
box     	  A   192.168.181.53  ;施丰丰
*.cjzhang 	  A   192.168.181.46  ;章春景
cjzhang 	  A   192.168.181.46  ;章春景
*.cold    	  A   192.168.181.40  ;封寒军
cold    	  A   192.168.181.40  ;封寒军
*.david   	  A   192.168.181.42  ;叶传伟
david   	  A   192.168.181.42  ;叶传伟
eddie   	  A   192.168.181.37  ;田超
*.eddie   	  A   192.168.181.37  ;田超
eddie   	  A   192.168.181.37  ;田超
*.ffshi   	  A   192.168.181.24  ;施峰峰
ffshi   	  A   192.168.181.24  ;施峰峰
*.ffshiweb   	  A   192.168.181.24  ;施峰峰
ffshiweb   	  A   192.168.181.24  ;施峰峰
*.gyzhu   	  A   192.168.181.28  ;朱刚毅
gyzhu   	  A   192.168.181.28  ;朱刚毅
*.hhfu    	  A   192.168.181.31  ;傅慧华
*.hhfuweb 	 A 192.168.181.31 ;傅慧华
hhfu    	  A   192.168.181.31  ;傅慧华
hhfuweb 	 A 192.168.181.31 ;傅慧华
*.hlan    	  A   192.168.181.14  ;安红亮
hlan    	  A   192.168.181.14  ;安红亮
*.hli     	  A   192.168.181.33  ;李海
hli     	  A   192.168.181.33  ;李海
*.hqyun   	  A   192.168.181.23  ;云海勤
hqyun   	  A   192.168.181.23  ;云海勤
*.hqyunweb   	  A   192.168.181.23  ;云海勤
hqyunweb   	  A   192.168.181.23  ;云海勤
*.htlv    	  A   192.168.181.41  ;吕海涛
htlv    	  A   192.168.181.41  ;吕海涛
*.jerry   	  A   192.168.181.34  ;王国行
jerry   	  A   192.168.181.34  ;王国行
*.jhzhu   	  A   192.168.181.52  ;朱建华
jhzhu   	  A   192.168.181.52  ;朱建华
*.jockhu  	  A   192.168.181.13  ;胡家友
*.jockhuweb 	 A 192.168.181.13 ;胡家友
jockhu  	  A   192.168.181.13  ;胡家友
jockhuweb 	 A 192.168.181.13 ;胡家友
*.jock    	  A   192.168.181.13  ;胡家友
*.jockweb 	 A 192.168.181.13 ;胡家友
jock    	  A   192.168.181.13  ;胡家友
jockweb 	 A 192.168.181.13 ;胡家友
*.kavin   	  A   192.168.181.18  ;孟智
kavin   	  A   192.168.181.18  ;孟智
*.lilin   	  A   192.168.181.22  ;李林
lilin   	  A   192.168.181.22  ;李林
*.luckzcj 	  A   192.168.181.54  ;章春景
luckzcj 	  A   192.168.181.54  ;章春景
*.peggy   	  A   192.168.181.15  ;赵鹏英
peggy   	  A   192.168.181.15  ;赵鹏英
*.pyzhao  	  A   192.168.181.50  ;赵鹏英
pyzhao  	  A   192.168.181.50  ;赵鹏英
*.sofock  	  A   192.168.181.44  ;王秋石
sofock  	  A   192.168.181.44  ;王秋石
*.spark   	  A   192.168.181.56  ;孙守强
*.sparkweb 	 A 192.168.181.56 ;孙守强
spark   	  A   192.168.181.56  ;孙守强
sparkweb 	 A 192.168.181.56 ;孙守强
*.tom     	  A   192.168.181.12  ;宋武斌
tom     	  A   192.168.181.12  ;宋武斌
*.wbli    	  A   192.168.181.29  ;李文博
wbli    	  A   192.168.181.29  ;李文博
*.whzhu   	  A   192.168.181.27  ;朱维华
whzhu   	  A   192.168.181.27  ;朱维华
*.xqx     	  A   192.168.181.25  ;薛小青
xqx     	  A   192.168.181.25  ;薛小青
*.youland 	  A   192.168.181.17  ;刘晓曼
youland 	  A   192.168.181.17  ;刘晓曼
*.yuli    	  A   192.168.181.39  ;李宇
yuli    	  A   192.168.181.39  ;李宇
*.zhxia   	  A   192.168.181.16  ;夏政红
zhxia   	  A   192.168.181.16  ;夏政红
*.zmeng   	  A   192.168.181.51  ;孟智
zmeng   	  A   192.168.181.51  ;孟智
*.zmhu    	  A   192.168.181.11  ;胡志明
zmhu    	  A   192.168.181.11  ;胡志明
*.ericchen 	  A   192.168.181.43 ;陈志魁
ericchen 	  A   192.168.181.43 ;
roadingzhou 	 A 192.168.181.60 ;周颖
roadingzhouweb 	 A 192.168.181.60 ;周颖
*.roadingzhou		 	A 192.168.181.60 ;周颖
*.roadingzhouweb		 	A 192.168.181.60 ;周颖
sogo    	  A   192.168.181.64  ;封寒军
*.sogo    	  A   192.168.181.64  ;封寒军
michael 	  A   192.168.181.65  ;毛磊
*.michael 	  A   192.168.181.65  ;毛磊
yanyancui 	  A   192.168.181.68 ;崔言言
*.yanyancui  	  A   192.168.181.68 ;崔言言
mango   	  A   192.168.1.71 ;qa 姚雯
*.mango 	  A   192.168.1.71 ;
testtool    	  A   192.168.1.71 ;qa 姚雯
*.testtool  	  A   192.168.1.71 ;
kathleen    	  A   192.168.181.67 ;
*.kathleen  	  A   192.168.181.67 ;
seanzheng   	  A   192.168.181.70 ; 郑新华
*.seanzheng   	  A   192.168.181.70 ; 郑新华
hlxo    	  A   192.168.181.71 ; 曹宏浪
*.hlxo    	  A   192.168.181.71
Hanhor		 A	192.168.181.66
*.Hanhor	A	192.168.181.66
yonggong	A	192.168.181.72 ;龚湧
*.yonggong	A	192.168.181.72 ;龚湧
*.chengguo           A   192.168.181.82  ;叶传伟
vaness             A   192.168.181.85  ;夏政红
*.vaness           A   192.168.181.85  ;夏政红
chengguo             A   192.168.181.82  ;叶传伟
sushazhang             A   192.168.181.92
*.sushazhang             A   192.168.181.92
*.xingchen             A   192.168.181.94
