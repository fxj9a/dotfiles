# auto lock after suspend

> mostly from [this gist](https://gist.github.com/Raymo111/91ffd256b7aca6a85e8a99d6331d3b7b)

- install slock (no configuration necessary. just use the repo package)
- sudo copy `wakelock@.service` to `/etc/systemd/system/`
- `sudo systemctl enable wakelock@$USER` --now

