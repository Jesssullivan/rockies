## darwin controller setup:

```
sudo chmod +x scripts/setup_venv.sh
./scripts/setup_venv.sh && source darwin_venv/bin/activate
```

```
ansible-playbook -i inventory_dev -K darwin.yml -u "jess"
```

