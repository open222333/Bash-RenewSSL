source `dirname -- "$0"`/.env

# 參數1 指定域名
if [[ $1 ]]; then
	DOMAIN=$1
else
	echo "需指定參數 domain"
fi

rsync -Pavr -e "sshpass -p$HOST_PASSWORD ssh" /etc/letsencrypt/archive/$DOMAIN root@$HOST_IP:/etc/letsencrypt/archive
rsync -Pavr -e "sshpass -p$HOST_PASSWORD ssh" /etc/letsencrypt/live/$DOMAIN root@$HOST_IP:/etc/letsencrypt/live