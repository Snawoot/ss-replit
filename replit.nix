{ pkgs }: {
    deps = [
        pkgs.pwgen
        pkgs.qrencode.bin
        pkgs.shadowsocks-v2ray-plugin
        pkgs.go-shadowsocks2
    ];
}