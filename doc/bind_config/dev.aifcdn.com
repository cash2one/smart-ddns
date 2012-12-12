$ORIGIN .
$TTL 600	; 10 minutes
dev.aifcdn.com		IN SOA	mouse.dev.aifcdn.com. root.dev.aifcdn.com. (
				2012101101 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	mouse.dev.aifcdn.com.
			A	192.168.1.24
$ORIGIN dev.aifcdn.com.
*			A	192.168.1.24
$TTL 86400	; 1 day
alan			A	192.168.181.21
$ORIGIN alan.dev.aifcdn.com.
*			A	192.168.1.17
			A	192.168.181.21
$ORIGIN dev.aifcdn.com.
andy			A	192.168.181.49
$ORIGIN andy.dev.aifcdn.com.
*			A	192.168.181.49


$ORIGIN dev.aifcdn.com.
include.sushazhang			A	192.168.181.92
pages.sushazhang			A	192.168.181.92




$ORIGIN dev.aifcdn.com.
kenku			A	192.168.181.100
$ORIGIN kenku.dev.aifcdn.com.
*			A	192.168.181.100


$ORIGIN dev.aifcdn.com.
tyang			A	192.168.181.101
$ORIGIN tyang.dev.aifcdn.com.
*			A	192.168.181.101

$ORIGIN dev.aifcdn.com.
ray			A	192.168.181.109
$ORIGIN ray.dev.aifcdn.com.
*			A	192.168.181.109





$ORIGIN dev.aifcdn.com.
tyangweb			A	192.168.181.101
$ORIGIN tyangweb.dev.aifcdn.com.
*			A	192.168.181.101


$ORIGIN dev.aifcdn.com.
sszweb			A	192.168.181.92
$ORIGIN sszweb.dev.aifcdn.com.
*			A	192.168.181.92


$ORIGIN dev.aifcdn.com.
shz			A	192.168.181.104
$ORIGIN shz.dev.aifcdn.com.
*			A	192.168.181.104


$ORIGIN dev.aifcdn.com.
zlzhang			A	192.168.181.106
$ORIGIN zlzhang.dev.aifcdn.com.
*			A	192.168.181.106


$ORIGIN dev.aifcdn.com.
wn			A	192.168.181.112
$ORIGIN wn.dev.aifcdn.com.
*			A	192.168.181.112



$ORIGIN dev.aifcdn.com.
davidshen			A	192.168.181.108
$ORIGIN davidshen.dev.aifcdn.com.
*			A	192.168.181.108






$ORIGIN dev.aifcdn.com.
wyqweb			A	192.168.181.67
$ORIGIN wyqweb.dev.aifcdn.com.
*			A	192.168.181.67


$ORIGIN dev.aifcdn.com.
kyou			A	192.168.181.110
$ORIGIN kyou.dev.aifcdn.com.
*			A	192.168.181.110


$ORIGIN dev.aifcdn.com.
dinlin			A	192.168.181.111
$ORIGIN dinlin.dev.aifcdn.com.
*			A	192.168.181.111




$ORIGIN dev.aifcdn.com.
bonny			A	192.168.181.45
$ORIGIN bonny.dev.aifcdn.com.
*			A	192.168.181.45
$ORIGIN dev.aifcdn.com.
box			A	192.168.181.53
$ORIGIN box.dev.aifcdn.com.
*			A	192.168.181.53
			A	192.168.201.151
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
chenlei			A	192.168.1.59
$ORIGIN chenlei.dev.aifcdn.com.
*			A	192.168.1.59
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
cjzhang			A	192.168.181.46
$ORIGIN cjzhang.dev.aifcdn.com.
*			A	192.168.181.46
$ORIGIN dev.aifcdn.com.
cold			A	192.168.181.40
$ORIGIN cold.dev.aifcdn.com.
*			A	192.168.181.40
			A	192.168.201.224
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
cswang			A	192.168.1.3
$ORIGIN cswang.dev.aifcdn.com.
*			A	192.168.1.3
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
david			A	192.168.181.42
$ORIGIN david.dev.aifcdn.com.
*			A	192.168.181.42
$ORIGIN alan.dev.dev.aifcdn.com.
$TTL 600	; 10 minutes
*			A	192.168.1.17
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
eddie			A	192.168.181.37
$ORIGIN eddie.dev.aifcdn.com.
*			A	192.168.181.37
			A	192.168.201.203
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
eric			A	192.168.201.228
$ORIGIN eric.dev.aifcdn.com.
*			A	192.168.201.228
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
ericchen		A	192.168.181.43
$ORIGIN ericchen.dev.aifcdn.com.
*			A	192.168.181.43
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
eyong			A	192.168.1.168
$ORIGIN eyong.dev.aifcdn.com.
*			A	192.168.1.168
$ORIGIN dev.aifcdn.com.
feistel			A	192.168.201.133
$ORIGIN feistel.dev.aifcdn.com.
*			A	192.168.201.133
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
ffshi			A	192.168.181.24
$ORIGIN ffshi.dev.aifcdn.com.
*			A	192.168.1.193
			A	192.168.181.24
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
fp01			CNAME	fp01.dev.aifang.com.
$ORIGIN fp01.dev.aifcdn.com.
*			CNAME	fp01.dev.aifang.com.
$ORIGIN dev.aifcdn.com.
fp02			CNAME	fp01.dev.aifang.com.
$ORIGIN fp02.dev.aifcdn.com.
*			CNAME	fp01.dev.aifang.com.
$ORIGIN dev.aifcdn.com.
fp03			CNAME	fp01.dev.aifang.com.
$ORIGIN fp03.dev.aifcdn.com.
*			CNAME	fp01.dev.aifang.com.
$ORIGIN dev.aifcdn.com.
fp04			CNAME	fp01.dev.aifang.com.
$ORIGIN fp04.dev.aifcdn.com.
*			CNAME	fp01.dev.aifang.com.
$ORIGIN dev.aifcdn.com.
fp05			CNAME	fp01.dev.aifang.com.
$ORIGIN fp05.dev.aifcdn.com.
*			CNAME	fp01.dev.aifang.com.
$ORIGIN dev.aifcdn.com.
fp06			CNAME	fp01
$ORIGIN fp06.dev.aifcdn.com.
*			CNAME	fp01.dev.aifcdn.com.
$ORIGIN dev.aifcdn.com.
fp07			CNAME	fp01
$ORIGIN fp07.dev.aifcdn.com.
*			CNAME	fp01.dev.aifcdn.com.
$ORIGIN dev.aifcdn.com.
fp08			CNAME	fp01
$ORIGIN fp08.dev.aifcdn.com.
*			CNAME	fp01.dev.aifcdn.com.
$ORIGIN dev.aifcdn.com.
fp09			CNAME	fp01
$ORIGIN fp09.dev.aifcdn.com.
*			CNAME	fp01.dev.aifcdn.com.
$ORIGIN dev.aifcdn.com.
fp10			CNAME	fp01
$ORIGIN fp10.dev.aifcdn.com.
*			CNAME	fp01.dev.aifcdn.com.
$ORIGIN dev.aifcdn.com.
fp11			CNAME	fp01
$ORIGIN fp11.dev.aifcdn.com.
*			CNAME	fp01.dev.aifcdn.com.
$ORIGIN dev.aifcdn.com.
git			A	192.168.1.82
$ORIGIN git.dev.aifcdn.com.
*			A	192.168.1.82
$ORIGIN dev.aifcdn.com.
guya			CNAME	guya.dev.anjuke.com.
$ORIGIN guya.dev.aifcdn.com.
*			CNAME	guya.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
gyzhu			A	192.168.181.28
$ORIGIN gyzhu.dev.aifcdn.com.
*			A	192.168.181.28
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
hejun			A	192.168.1.70
$ORIGIN hejun.dev.aifcdn.com.
*			A	192.168.1.70
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
hhfu			A	192.168.181.31
$ORIGIN hhfu.dev.aifcdn.com.
*			A	192.168.181.31
			A	192.168.201.148
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
hli			A	192.168.181.33
$ORIGIN hli.dev.aifcdn.com.
*			A	192.168.181.33
			A	192.168.201.173
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
hmq			A	192.168.201.135
$ORIGIN hmq.dev.aifcdn.com.
*			A	192.168.201.135
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
hqyun			A	192.168.181.23
$ORIGIN hqyun.dev.aifcdn.com.
*			A	192.168.181.23
$ORIGIN dev.aifcdn.com.
htlv			A	192.168.181.41
$ORIGIN htlv.dev.aifcdn.com.
*			A	192.168.181.41
			A	192.168.201.154
$ORIGIN dev.aifcdn.com.
java			A	192.168.180.106
$ORIGIN java.dev.aifcdn.com.
*			A	192.168.180.106
$ORIGIN dev.aifcdn.com.
jerry			A	192.168.181.34
$ORIGIN jerry.dev.aifcdn.com.
*			A	192.168.181.34
			A	192.168.201.172
$ORIGIN dev.aifcdn.com.
jhzhu			A	192.168.181.52
$ORIGIN jhzhu.dev.aifcdn.com.
*			A	192.168.181.52
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
jinpu			A	192.168.1.82
$ORIGIN jinpu.dev.aifcdn.com.
*			A	192.168.1.82
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
jock			A	192.168.181.13
$ORIGIN jock.dev.aifcdn.com.
*			A	192.168.181.13
$ORIGIN dev.aifcdn.com.
jockchina		A	192.168.181.47
$ORIGIN jockchina.dev.aifcdn.com.
*			A	192.168.181.47
$ORIGIN dev.aifcdn.com.
jockhu			A	192.168.181.13
$ORIGIN jockhu.dev.aifcdn.com.
*			A	192.168.181.13
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
jyang			CNAME	jyang.dev.anjuke.com.
$ORIGIN jyang.dev.aifcdn.com.
*			CNAME	jyang.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
kakie			A	192.168.181.96
$ORIGIN kakie.dev.aifcdn.com.
*			A	192.168.181.96
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
kavin			A	192.168.181.18
$ORIGIN kavin.dev.aifcdn.com.
*			A	192.168.181.18
$ORIGIN dev.aifcdn.com.
lilin			A	192.168.181.22
$ORIGIN lilin.dev.aifcdn.com.
*			A	192.168.181.22
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
liuwl			A	192.168.201.107
$ORIGIN liuwl.dev.aifcdn.com.
*			A	192.168.201.107
$ORIGIN dev.aifcdn.com.
liuyang			A	192.168.201.130
$ORIGIN liuyang.dev.aifcdn.com.
*			A	192.168.201.130
$ORIGIN liyu.dev.aifcdn.com.
$TTL 86400	; 1 day
*			A	192.168.201.220
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
lli			CNAME	lli.dev.anjuke.com.
$ORIGIN lli.dev.aifcdn.com.
*			CNAME	lli.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
local			A	127.0.0.1
$ORIGIN local.dev.aifcdn.com.
*			A	127.0.0.1
include			A	127.0.0.1
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
luckzcj			A	192.168.181.54
$ORIGIN luckzcj.dev.aifcdn.com.
*			A	192.168.181.54
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
macbuild		A	192.168.1.82
$ORIGIN macbuild.dev.aifcdn.com.
*			A	192.168.1.82
$ORIGIN dev.aifcdn.com.
pages			CNAME	dev.aifcdn.com.
$TTL 86400	; 1 day
peggy			A	192.168.181.15
$ORIGIN peggy.dev.aifcdn.com.
*			A	192.168.181.15
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
peterzhu		A	192.168.1.9
$ORIGIN peterzhu.dev.aifcdn.com.
*			A	192.168.1.9
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
pyzhao			A	192.168.181.50
$ORIGIN pyzhao.dev.aifcdn.com.
*			A	192.168.1.52
			A	192.168.181.50
$ORIGIN dev.aifcdn.com.
qa			A	192.168.180.103
$ORIGIN qa.dev.aifcdn.com.
*			A	192.168.180.103
$ORIGIN dev.aifcdn.com.
qa2			A	192.168.180.104
$ORIGIN qa2.dev.aifcdn.com.
*			A	192.168.180.104
$ORIGIN dev.aifcdn.com.
qa3			A	192.168.180.105
$ORIGIN qa3.dev.aifcdn.com.
*			A	192.168.180.105
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
sdhou			A	192.168.1.14
$ORIGIN sdhou.dev.aifcdn.com.
*			A	192.168.1.14
$ORIGIN dev.aifcdn.com.
sky			CNAME	sky.dev.anjuke.com.
$ORIGIN sky.dev.aifcdn.com.
*			CNAME	sky.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
smyang			A	192.168.201.138
$ORIGIN smyang.dev.aifcdn.com.
*			A	192.168.201.138
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
sofock			A	192.168.181.44
$ORIGIN sofock.dev.aifcdn.com.
*			A	192.168.181.44
			A	192.168.201.232
$ORIGIN dev.aifcdn.com.
spark			A	192.168.181.56
$ORIGIN spark.dev.aifcdn.com.
*			A	192.168.181.56
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
sysdev			A	192.168.1.26
$ORIGIN sysdev.dev.aifcdn.com.
*			A	192.168.1.26
$ORIGIN dev.aifcdn.com.
terry			CNAME	terry.dev.anjuke.com.
$ORIGIN terry.dev.aifcdn.com.
*			CNAME	terry.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
think			A	192.168.201.163
$ORIGIN think.dev.aifcdn.com.
*			A	192.168.201.163
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
tom			A	192.168.181.12
$ORIGIN tom.dev.aifcdn.com.
*			A	192.168.181.12
$ORIGIN wade.dev.aifcdn.com.
$TTL 600	; 10 minutes
*			A	192.168.1.236
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
wbli			A	192.168.181.29
$ORIGIN wbli.dev.aifcdn.com.
*			A	192.168.181.29
			A	192.168.201.141
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
wgy			A	192.168.201.47
$ORIGIN wgy.dev.aifcdn.com.
*			A	192.168.201.47
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
whzhu			A	192.168.181.27
$ORIGIN whzhu.dev.aifcdn.com.
*			A	192.168.181.27
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
william			A	192.168.201.162
$ORIGIN william.dev.aifcdn.com.
*			A	192.168.201.162
$ORIGIN dev.aifcdn.com.
xiazh			CNAME	xiazh.dev.anjuke.com.
$ORIGIN xiazh.dev.aifcdn.com.
*			CNAME	xiazh.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
xqx			A	192.168.181.25
$ORIGIN xqx.dev.aifcdn.com.
*			A	192.168.181.25
$ORIGIN dev.aifcdn.com.
$TTL 600	; 10 minutes
yannliang		CNAME	yannliang.dev.anjuke.com.
$ORIGIN yannliang.dev.aifcdn.com.
*			CNAME	yannliang.dev.anjuke.com.
$ORIGIN dev.aifcdn.com.
yelanxin		A	192.168.1.186
$ORIGIN yelanxin.dev.aifcdn.com.
*			A	192.168.1.186
$ORIGIN dev.aifcdn.com.
ylx			A	192.168.1.123
			A	192.168.1.186
$ORIGIN ylx.dev.aifcdn.com.
*			A	192.168.1.123
			A	192.168.1.186
$ORIGIN dev.aifcdn.com.
$TTL 86400	; 1 day
youland			A	192.168.181.17
$ORIGIN youland.dev.aifcdn.com.
*			A	192.168.181.17
$ORIGIN dev.aifcdn.com.
yuli			A	192.168.181.39
$ORIGIN yuli.dev.aifcdn.com.
*			A	192.168.181.39
$ORIGIN dev.aifcdn.com.
zhxia			A	192.168.181.16
$ORIGIN zhxia.dev.aifcdn.com.
*			A	192.168.181.16
$ORIGIN dev.aifcdn.com.
zmeng			A	192.168.181.51
$ORIGIN zmeng.dev.aifcdn.com.
*			A	192.168.181.51
$ORIGIN dev.aifcdn.com.
zmhu			A	192.168.181.11
$ORIGIN zmhu.dev.aifcdn.com.
*			A	192.168.181.11
$TTL 600	; 10 minutes
include			A	192.168.1.151
			A	192.168.2.88
; add aifang new
$ORIGIN dev.aifcdn.com.
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
*.roadingzhou 	 A 192.168.181.60 ;周颖
*.roadingzhouweb 	 A 192.168.181.60 ;周颖
sogo    	  A   192.168.181.64  ;封寒军
*.sogo    	  A   192.168.181.64  ;封寒军
michael 	  A   192.168.181.65  ;毛磊
*.michael 	  A   192.168.181.65  ;毛磊
hanhor  	  A   192.168.181.66  ;吴瀚浩
*.hanhor  	  A   192.168.181.66  ;吴瀚浩
yanyancui 	  A   192.168.181.68 ;崔言言
*.yanyancui  	  A   192.168.181.68 ;崔言言
kathleen    	  A   192.168.181.67;
*.kathleen  	  A   192.168.181.67;
seanzheng   	  A   192.168.181.70; 郑新华
*.seanzheng   	  A   192.168.181.70; 郑新华
hlxo    	  A   192.168.181.71; 曹宏浪
*.hlxo    	  A   192.168.181.71
yonggong	A	192.168.181.72 ;龚湧
*.yonggong	A	192.168.181.72 ;龚湧
vaness             A   192.168.181.85  ;夏政红
*.vaness           A   192.168.181.85  ;夏政红
*.xingchen           A   192.168.181.94  ;夏政红
jamesjiang	A	192.168.181.97 ;james
*.jamesjiang	A	192.168.181.97 ;james

