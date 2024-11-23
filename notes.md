
### Kernel notes:
- Based on linux kernel 6.12 canidate rc6; includes a number of low latency modifications from the realtime kernel patch set.
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



