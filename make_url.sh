#!/bin/bash

set -euo pipefail

IFS= read -r password < passwd.txt

domain="${REPL_SLUG}.${REPL_OWNER}.repl.co"
plugin=$(echo -n "v2ray;host=${domain};tls" | sed -e 's/\//%2F/g' -e 's/=/%3D/g' -e 's/;/%3B/g')
ss="ss://$(echo -n chacha20-ietf-poly1305:${password} | base64 -w 0)@${domain}:443?plugin=${plugin}"

echo "$ss" > url.txt