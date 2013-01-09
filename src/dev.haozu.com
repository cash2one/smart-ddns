$ORIGIN .
$TTL 5
%s               IN SOA  ns.%d. root.%s. (
                                %d ; serial time()
                                10800      ; refresh (3 hours)
                                900        ; retry (15 minutes)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )

$ORIGIN %s.

ns              A       192.168.1.100
@               NS      ns.%s.
lvandu.dev.haozu.com    CNAME    okaybuy.lvandu.d.corp.anjuke.com
*lvandu.dev.haozu.com    CNAME    okaybuy.lvandu.d.corp.anjuke.com
gywang.dev.haozu.com    CNAME    windows.gywang.d.corp.anjuke.com
*gywang.dev.haozu.com    CNAME    windows.gywang.d.corp.anjuke.com
yunlongxiao.dev.haozu.com    CNAME    safd.yunlongxiao.d.corp.anjuke.com
*yunlongxiao.dev.haozu.com    CNAME    safd.yunlongxiao.d.corp.anjuke.com
