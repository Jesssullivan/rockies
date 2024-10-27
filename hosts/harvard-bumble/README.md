# xoxd's Rockies

Kernel configurations:
- Based on linux kernel 6.12 canidate rc4; includes a number of low latency modifications from the realtime kernel patch set.
- includes kernel level ntfs support  for maximal support with fuse.  This supports the continued life of our drobo DAS.  This is mounted using fuse ntfs 3g, ontop of which we run a minio s3 object storage service.
- includes additional support for virtualization and observability.
- Kernel is built on host.

## darwin controller setup:


```
sudo chmod +x scripts/setup_venv.sh
./scripts/setup_venv.sh && source darwin_venv/bin/activate
```


### Running playbooks:
```
ansible-playbook -i inventory_dev -K darwin.yml -u "jess"
```

