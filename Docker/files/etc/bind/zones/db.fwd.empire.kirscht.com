;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.empire.kirscht.com. root.ns1.empire.kirscht.com.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	localhost.
@	IN	A	127.0.0.1
@	IN	AAAA	::1

;Name Server Information
        IN      NS      ns1.empire.local.
;Name Server A records
ns1.empire.kirscht.com.      IN      A       172.17.0.2
endor.empire.kirscht.com.	IN	A	10.55.55.3
endor2.empire.kirscht.com.	IN	CNAME	endor.empire.kirscht.com.