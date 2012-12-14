#!/bin/bash
url="www.anjuke.com"
time=1
cat /dev/null>/tmp/smart.log
until [[ -s /tmp/smart.log ]]||[[ $time -gt 60 ]]
do
    curl -I $url 1>/tmp/smart.log 2>/dev/null
    sleep 1
    let time=time+1
done

sed -n '1,11p' $0>/etc/init.d/smart_ddns.sh
chmod 755 /etc/init.d/smart_ddns.sh

update-rc.d -f smart_ddns.sh remove
update-rc.d smart_ddns.sh defaults 99

#remove self-starting script,please type these commands
#update-rc.d -f smart_ddns.sh remove
#rm /etc/init.d/smart_ddns.sh
