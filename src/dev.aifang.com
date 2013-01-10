$ORIGIN .
$TTL 5
%s               IN SOA  ns.%s. root.%s. (
                                %d ; serial time()
                                10800      ; refresh (3 hours)
                                900        ; retry (15 minutes)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )

$ORIGIN %s.

ns              A       192.168.1.100
@               NS      ns.%s.
gywang.dev.aifang.com      CNAME      old.gywang.d.corp.anjuke.com
*.gywang.dev.aifang.com      CNAME      old.gywang.d.corp.anjuke.com
lvandu.dev.aifang.com      CNAME      okaybuy.lvandu.d.corp.anjuke.com
*.lvandu.dev.aifang.com      CNAME      okaybuy.lvandu.d.corp.anjuke.com
