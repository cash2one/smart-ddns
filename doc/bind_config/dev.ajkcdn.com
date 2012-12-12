$ORIGIN .
$TTL 600	; 10 minutes
dev.ajkcdn.com		IN SOA	dev.ajkcdn.com. root.dev.ajkcdn. (
				2009120428 ; serial
				10800      ; refresh (3 hours)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	mouse.dev.ajkcdn.com.
$ORIGIN dev.ajkcdn.com.
*			A	192.168.1.96
mouse			A	192.168.1.100
