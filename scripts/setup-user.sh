#!/bin/sh

adduser --gecos pi \
  --disabled-password \
  --shell /bin/bash \
  pi
adduser pi sudo
echo "pi:raspberry" | chpasswd

mkdir -p /home/pi/.config/chromium/Default
cat >/home/pi/.config/chromium/Default/Preferences <<EOF
{
	"browser": {
		"window_placement": {
			"top": 50,
			"bottom": 1080,
			"left": 0,
			"right": 1920,
			"maximized": true 
		}
	}
}
EOF

chown -R pi: /home/pi
