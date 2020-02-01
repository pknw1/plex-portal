#!/bin/bash

cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
cat <<EOF >/etc/xrdp/xrdp.ini
[Globals]
ini_version=1

fork=true
port=3389
use_vsock=false
tcp_nodelay=true
tcp_keepalive=true

security_layer=negotiate
crypt_level=high
certificate=
key_file=
ssl_protocols=TLSv1, TLSv1.1, TLSv1.2

allow_channels=false
allow_multimon=true
bitmap_cache=true
bitmap_compression=true
bulk_compression=true
max_bpp=32
new_cursors=true
use_fastpath=both

[Logging]
LogFile=xrdp.log
LogLevel=ERROR
EnableSyslog=true
SyslogLevel=ERROR

[Channels]
rdpdr=true
rdpsnd=true
drdynvc=true
cliprdr=true
rail=true
xrdpvr=true
tcutils=true

[Xorg]
name=Xorg
lib=libxup.so
username=ask
password=ask
ip=127.0.0.1
port=-1
code=20
EOF

service xrdp restart