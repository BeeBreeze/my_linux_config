#echo Please input your domain account and password
echo Please input your account password and press Enter

#read -p"account:" username

username="w00600280"

read -p"password:" -s password

echo

#echo Please choose a proxy server, eg: proxycn2.Huawei.com/openproxy.Huawei.com/proxyhk.Huawei.com/proxy.Huawei.com

#read -p"proxy server[proxy]:" proxy

escape_pass=`echo -ne $password| xxd -plain | tr  -d '\n' | sed 's/\(..\)/%\1/g'`

export http_proxy=http://$username:$escape_pass@${proxy:-openproxy}.huawei.com:8080/

export ftp_proxy=$http_proxy

export https_proxy=$http_proxy

my_ips=`ip -f inet addr | grep global | awk '{print $2}' | awk -F/ '{print $1}' | tr '\n' ','`

host_names=`hostname -a | tr ' ' ','`

export no_proxy=127.0.0.1,.huawei.com,localhost,local,.local,$my_ips$host_names

#export http_proxy=http://w00600280:lxy%409201@172.30.65.47:8080
#export https_proxy=http://w00600280:lxy%409201@172.30.65.47:8080
#export no_proxy=127.0.0.1,.huawei.com,localhost,local,.local

