#!/bin/bash

# setup
dnf install -y httpd
echo 'Brents Web Site' > /var/www/html/index.html

chcon -t tmp_t /var/www/html/index.html
ls -Z  /var/www/html/index.html

systemctl enable --now httpd

curl localhost

dnf install -y policycoreutils-devel
dnf install -y setools

grep -i setroubleshoot /var/log/messages
journalctl -t setroubleshoot -o cat

semanage fcontext -l | grep "^/var/www"

ps -efZ | grep httpd

sesearch --allow -s httpd_t -t httpd_sys_content_t

restorecon -R /var/www

curl localhost

