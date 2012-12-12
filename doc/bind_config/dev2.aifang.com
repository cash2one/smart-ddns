$ORIGIN .
$TTL 3600	; 1 hour
dev2.aifang.com		IN SOA	mouse.dev2.aifang.com. root.dev2.aifang.com. (
				2012032310 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	mouse.dev.aifang.com.
$TTL 600	; 10 minutes
			A	192.168.1.56
$ORIGIN dev2.aifang.com.
*			CNAME	dev2.aifang.com.
mouse           IN      A       192.168.1.100
