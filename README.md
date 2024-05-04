# Anleitung um PiCloud - NextCloud Server on RaspPi

## Install Ansible

```bash
sudo apt install pipx
pipx install --include-deps ansible
```

## Infos

https://kohlfrederic.de/nextcloud-auf-einem-raspberry-pi-4-installieren/

## Starten

```bash
ansible-playbook -i hosts ./playbooks/nextcloud_prepare.yml --ask-become-pass
```

## Nextcloud starten

http://192.168.178.86:9020/

Dann einfach einen neuen Admin erstellen + PW
z.B.: myadminsb

## Einige Scripts

### Nextcloud occ

Starten von OCC
```
docker exec --user www-data piplex_nextcloud php occ
```

### OCC Nutzer anzeigen

Nutzer anzeigen
```
docker exec --user www-data piplex_nextcloud php occ user:list
```

### OCC Files scanen

```
docker exec --user www-data piplex_nextcloud php occ files:scan --all
```