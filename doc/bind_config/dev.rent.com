$ttl 38400
dev.rent.com.	IN	SOA	mouse. root (
					1249878196
								10800
											60
														604800
																	38400 )
dev.rent.com.	IN	NS	mouse.
dev.rent.com.	IN	A	192.168.1.96
*.dev.rent.com.   IN      A       192.168.1.96
