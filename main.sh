source `dirname -- "$0"`/.env

DIR=`dirname -- "$0"`

# 參數1 指定域名
if [[ $1 ]]; then
	DOMAIN=$1
	echo "DOMAIN: $DOMAIN"
	/bin/bash $DIR/tools/renew_ssl.sh $DOMAIN
	/bin/bash $DIR/tools/rsync_to_target.sh $DOMAIN
else
	echo "需指定參數 domain"
fi



