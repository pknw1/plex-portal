cat <<EOF > /etc/default/shellinabox
SHELLINABOX_DAEMON_START=1
SHELLINABOX_PORT=4200
SHELLINABOX_ARGS="--localhost-only --no-beep"
EOF
sudo service shellinabox restart
