# xoxd's Rockies

*darwin controller setup:*
```
sudo chmod +x scripts/setup_venv.sh
./scripts/setup_venv.sh && source darwin_venv/bin/activate
```

*tailscale setup, rockies*
```
# add repo
dnf config-manager --add-repo https://pkgs.tailscale.com/stable/rhel/9/tailscale.repo

# install
dnf -y install tailscale

# enable
systemctl enable --now tailscaled

#start
sudo tailscale up -ssh
```

*Running playbooks:*
```
# rocky:
ansible-playbook -i harvard-music/ -K rt-kernel.yml -u "jess"

# darwin:
ansible-playbook -i inventory_dev -K darwin.yml -u "jess"
```

*tailscale setup, ubuntu*
```
curl -fsSL https://tailscale.com/install.sh | sh
#start:
sudo tailscale up -ssh
```


- - -

