swayidle -w timeout 300 'swaylock -f -c 0000FF' \
            timeout 600 'systemctl suspend' \
            before-sleep 'swaylock -f -c 0000FF' &
