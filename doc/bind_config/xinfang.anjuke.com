$ORIGIN .
$TTL 600
xinfang.anjuke.com		IN SOA	ns.xinfang.anjuke.com. root.xinfang.anjuke.com. (
				2012112701 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)

$ORIGIN xinfang.anjuke.com.

ns          IN  A       192.168.1.100
@           IN  NS      ns.xinfang.anjuke.com.
@	    IN  A       192.168.1.24
dev         IN  A       192.168.1.24
*           IN  CNAME   @


$ORIGIN dev.xinfang.anjuke.com.

*           IN  CNAME   dev.xinfang.anjuke.com.
alan        IN  A       192.168.181.21  ;朱建华
*.alan      IN  A       192.168.181.21  ;朱建华
cold        IN  A       192.168.181.40  ;封寒军
*.cold      IN  A       192.168.181.40  ;封寒军
david       IN  A       192.168.181.42  ;叶传伟
*.david     IN  A       192.168.181.42  ;叶传伟
eddie       IN  A       192.168.181.37  ;田超
*.eddie     IN  A       192.168.181.37  ;田超
gyzhu       IN  A       192.168.181.28  ;朱刚毅
*.gyzhu     IN  A       192.168.181.28  ;朱刚毅
hqyun       IN  A       192.168.181.23  ;云海勤
*.hqyun     IN  A       192.168.181.23  ;云海勤
hqyunweb    IN  A       192.168.181.23  ;云海勤
*.hqyunweb  IN  A       192.168.181.23  ;云海勤
htlv        IN  A       192.168.181.41  ;吕海涛
*.htlv      IN  A       192.168.181.41  ;吕海涛
jhzhu       IN  A       192.168.181.52  ;朱建华
*.jhzhu     IN  A       192.168.181.52  ;朱建华
jockhu      IN  A       192.168.181.13  ;胡家友
*.jockhu    IN  A       192.168.181.13  ;胡家友
jockhuweb   IN  A       192.168.181.13  ;胡家友
*.jockhuweb IN  A       192.168.181.13  ;胡家友
jock        IN  A       192.168.181.13  ;胡家友
*.jock      IN  A       192.168.181.13  ;胡家友
jockweb     IN  A       192.168.181.13  ;胡家友
*.jockweb   IN  A       192.168.181.13  ;胡家友
kavin       IN  A       192.168.181.18  ;孟智
*.kavin     IN  A       192.168.181.18  ;孟智
peggy       IN  A       192.168.181.15  ;赵鹏英
*.peggy     IN  A       192.168.181.15  ;赵鹏英
pyzhao      IN  A       192.168.181.50  ;赵鹏英
*.pyzhao    IN  A       192.168.181.50  ;赵鹏英
tom         IN  A       192.168.181.12  ;宋武斌
*.tom       IN  A       192.168.181.12  ;宋武斌
youland     IN  A       192.168.181.17  ;刘晓曼
*.youland   IN  A       192.168.181.17  ;刘晓曼
zmeng       IN  A       192.168.181.51  ;孟智
*.zmeng     IN  A       192.168.181.51  ;孟智
zmhu        IN  A       192.168.181.11  ;胡志明
*.zmhu      IN  A       192.168.181.11  ;胡志明
sogo        IN  A       192.168.181.64  ;封寒军
*.sogo      IN  A       192.168.181.64  ;封寒军
seanzheng   IN  A       192.168.181.70  ;郑新华
*.seanzheng IN  A       192.168.181.70  ;郑新华
hlxo        IN  A       192.168.181.71  ;曹宏浪
*.hlxo      IN  A       192.168.181.71  ;曹宏浪
chengguo    IN  A       192.168.181.82  ;叶传伟
*.chengguo  IN  A       192.168.181.82  ;叶传伟
sushazhang  IN  A       192.168.181.92
*.sushazhang IN  A       192.168.181.92
jamesjiang  IN  A       192.168.181.97  ;姜胜军
*.jamesjiang IN  A       192.168.181.97  ;姜胜军
szweb       IN  A       192.168.181.92  ;张素沙
*.szweb     IN  A       192.168.181.92  ;张素沙
tyang       IN  A       192.168.181.101 ;杨桐
*.tyang     IN  A       192.168.181.101 ;杨桐
tyangweb    IN  A       192.168.181.101 ;杨桐
*.tyangweb  IN  A       192.168.181.101 ;杨桐
kathleen    IN  A       192.168.181.67  ;江仑
*.kathleen  IN  A       192.168.181.67  ;江仑
davidshen   IN  A       192.168.181.108 ;沈大伟
*.davidshen IN  A       192.168.181.108 ;沈大伟
kenku       IN  A       192.168.181.100 ;库小强
*.kenku     IN  A       192.168.181.100 ;库小强
zlzhang     IN  A       192.168.181.106 ;张子麟
*.zlzhang   IN  A       192.168.181.106 ;张子麟
ray         IN  A       192.168.181.109 ;刘锐
*.ray       IN  A       192.168.181.109 ;刘锐
kyou        IN  A       192.168.181.110 ;张敬强
*.kyou      IN  A       192.168.181.110 ;张敬强
dinlin      IN  A       192.168.181.111 ;丁林
*.dinlin    IN  A       192.168.181.111 ;丁林
