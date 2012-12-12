$ORIGIN .
$TTL 3600	; 1 hour
dev3.aifang.com		IN SOA	mouse.dev3.aifang.com. root.dev3.aifang.com. (
				2012032310 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	mouse.dev.aifang.com.
$TTL 600	; 10 minutes
			A	192.168.1.57
$ORIGIN dev3.aifang.com.
*			CNAME	dev3.aifang.com.
mouse		IN	A	192.168.1.100
