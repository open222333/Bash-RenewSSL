# Bash-RenewSSL

刷新ssl證書並傳送到目標主機

```bash
# CentOS
yum install sshpass -y

# 兩個月執行一次
0 0 2 * * /bin/bash /path/to/renew_ssl $domain
```