# NixOS Server Config

## TODO

- [ ] Add backup and restore instructions
- [ ] Set up Docker and Podman with Nix
- [ ] Document how to create new containers using Nix
- [ ] Add minimal server modules
  - [ ] SSH
  - [ ] Networking (interfaces, DHCP/static IP, hostname)
  - [ ] Firewall (nftables, firewalld)
  - [ ] Backups (local and remote)
  - [ ] Restore instructions
  - [ ] Monitoring (Prometheus node exporter, system health)
  - [ ] Time synchronization (NTP/chrony)
  - [ ] User and group management
  - [ ] Storage (mounts, ZFS/Btrfs/LVM, RAID)
  - [ ] Logging (journald, syslog, logrotate)
  - [ ] Automatic updates/security patches
  - [ ] Mail server or relay (optional)
  - [ ] Web server (optional, e.g., nginx)
  - [ ] Certificate management (ACME/LetsEncrypt)
  - [ ] Fail2ban or similar intrusion prevention
  - [ ] Hardware health (SMART, sensors)
  - [ ] VPN server (optional, WireGuard/OpenVPN)
  - [ ] DNS server (optional)
  - [ ] DHCP server (optional)
  - [ ] Print server (optional)
  - [ ] File sharing (optional, Samba/NFS)
- [ ] Add and manage services using NixOS containers
  - [ ] Minecraft server
  - [ ] n8n
  - [ ] Tailscale
  - [ ] BookStack
  - [ ] Tactical RMM
  - [ ] Jellyfin
  - [ ] Obsidian

- [ ] General Configuration & Usability
  - [ ] Add example configuration files for quick setup
  - [ ] Provide a template for secrets management (e.g., age, sops, or built-in NixOS options)
  - [ ] Add documentation for customizing modules and overriding options
  - [ ] Add flake support for reproducible builds and easier deployment
  - [ ] Provide a script or instructions for initial server bootstrap/install
  - [ ] Add hardware-configuration.nix example or generator instructions

- [ ] Security & Hardening
  - [ ] Enable and document system hardening options (e.g., kernel lockdown, sysctl tweaks)
  - [ ] Set up 2FA for SSH (e.g., with Yubikey or TOTP)
  - [ ] Add security audit tools (e.g., Lynis, OpenSCAP)
  - [ ] Document and enable automatic security updates

- [ ] Networking & Remote Management
  - [ ] Add remote management tools (e.g., Cockpit, Webmin, or NixOS-native alternatives)
  - [ ] Provide example firewall rules for common scenarios
  - [ ] Add IPv6 support and documentation

- [ ] Backups & Disaster Recovery
  - [ ] Add snapshotting support (e.g., with Btrfs/ZFS or systemd)
  - [ ] Provide disaster recovery documentation (bare metal restore, etc.)

- [ ] Monitoring & Alerts
  - [ ] Integrate alerting (e.g., email, Matrix, Telegram, or Prometheus Alertmanager)
  - [ ] Add Grafana dashboard templates for server metrics

- [ ] Automation & CI/CD
  - [ ] Add GitHub Actions or other CI/CD pipeline for testing builds
  - [ ] Provide a way to auto-deploy config changes to the server

- [ ] Quality of Life
  - [ ] Add MOTD/banner customization
  - [ ] Add shell environment customization (e.g., bash/zsh/fish config)
  - [ ] Provide a changelog or release notes template

---

This repo is for my personal NixOS server configuration. All desktop and graphical modules have been removed for a bare-bones setup.

## Hardware Configuration

This repo does not include a `hardware-configuration.nix` file, as it is specific to each machine.

After installing NixOS, generate your own with:

```sh
nixos-generate-config --root /mnt
```

Then, ensure your `configuration.nix` imports it:

```nix
imports = [
  ./hardware-configuration.nix
  # other imports...
];
```
