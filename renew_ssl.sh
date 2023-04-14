source `dirname -- "$0"`/.env

# 參數1 指定域名
if [[ $1 ]]; then
	DOMAIN=$1
	echo "DOMAIN: $DOMAIN"

	if [[ $CLI_INI ]]; then
		cd /etc/letsencrypt
		certbot -c $CLI_INI renew --quiet --dns-cloudflare --force-renew --no-autorenew --cert-name $DOMAIN
		git add .
		git commit -m 刷新證書
		git push
	else
		cd /etc/letsencrypt
		certbot renew --quiet --dns-cloudflare --force-renew --no-autorenew --cert-name $DOMAIN
		git add .
		git commit -m 刷新證書
		git push
	fi


else
	echo "需指定參數 domain"
fi
