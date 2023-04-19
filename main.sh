source `dirname -- "$0"`/.env

DIR=`dirname -- "$0"`

# 參數1 指定域名
if [[ $1 ]]; then
	echo "DOMAIN: $1"
	# 參數2 指定目標位置
	if [[ $2 ]]; then
		/bin/bash $DIR/tools/renew_ssl.sh $1
		/bin/bash $DIR/tools/rsync_to_target.sh $1 $2
	else
		echo "需指定參數 目標位置"
	fi
else
	echo "需指定參數 domain"
fi


