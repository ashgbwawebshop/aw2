#!/bin/sh
sed -e "s/\${PROXY_USER}/$PROXY_USER/" -e "s/\${PROXY_PASS}/$PROXY_PASS/" \
  /etc/gost/config.template.yml > /etc/gost/config.yml
exec gost -C /etc/gost/config.yml
