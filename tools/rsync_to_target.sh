source `dirname -- "$0"`/.env

# 參數1 指定域名
if [[ $1 ]]; then
	# 參數2 指定目標位置
	if [[ $2 ]]; then
		rsync -Pavr -e "sshpass -p$HOST_PASSWORD ssh" /etc/letsencrypt/live/$1 root@$HOST_IP:$2
	else
		echo "需指定參數 目標位置"
	fi
else
	echo "需指定參數 domain"
fi
