#!/bin/bash

set -euo pipefail

IFS= read -r password < passwd.txt
IFS= read -r url < url.txt

echo '############################'
echo $'Password:\t'"${password}"
echo $'SS URL:\t\t'"${url}"
echo 'Also QR code with server credentials is available in this REPL files.'
echo '############################'

exec go-shadowsocks2 -s 'ss://AEAD_CHACHA20_POLY1305:'"${password}"'@:8488' -verbose -plugin v2ray-plugin -plugin-opts "server" -udp=false