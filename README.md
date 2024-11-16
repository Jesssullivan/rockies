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


### Kernel notes:
- Based on linux kernel 6.12 canidate rc4; includes a number of low latency modifications from the realtime kernel patch set.
- includes kernel level ntfs support  for maximal support with fuse.  This supports the continued life of our drobo DAS.  This is mounted using fuse ntfs 3g, ontop of which we run a minio s3 object storage service.
- includes additional support for virtualization and observability.
- Kernel is built on host.

So far we've got the following playbooks:
- **super rad rockie kernel owo**
  - [x] *written & works*
  - [ ] tested on multiple hosts
  - [ ] includes linted roles
- **jellyfin media server** (inital config)
  - [x] *initial config*
  - [x] uses public `caddy` server proxy
  - [ ] finished end user configuration
  - [ ] uses *only* s3 sorage classes
  - [ ] includes linted roles
- **`DO` caddy proxy**
  - [x] *written & works*
  -  uses upstream `terraform` and `just` deployment stratagy
- **minio S3 storage overlay**
  - [x] *initial config*
  - [ ] finished mc migration scripts
  - [ ] finished end user configuration
  - [ ] finished vaulting keys and has token rotation stratagy in place
  - [ ] is reachable publically *(only)* via tailnet w/ local caddy
- **darwin control environment playbook**
  - [x] *written & works*

### Implimented locally but not yet scripted:
- ***distrobox ardour overlay w/ support for windows VSTs!***
- tailnet admission
- firefox sqlite3 observer script
- chrome setup
- initial cinnamon config



