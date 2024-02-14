swayidle -w timeout 600 'systemctl suspend' \
            before-sleep 'swaylock -f -c 00333a' &
