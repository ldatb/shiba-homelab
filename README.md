# Shiba Homelab

<div align="center">

<h1>
    <img align="center" width=400px src="logo.svg">
</h1>

<div style="display:flex; justify-content:center; gap: 15px;">
    <img alt="Debian" width=30px src="https://www.debian.org/logos/openlogo-nd.svg">
    <img alt="Ansible" width=37px src="https://logos-download.com/wp-content/uploads/2016/10/Ansible_logo-700x700.png">
    <img alt="Kubernetes" width=37px src="https://www.vectorlogo.zone/logos/kubernetes/kubernetes-icon.svg">
    <img alt="Helm" width=30px src="https://seeklogo.com/images/H/helm-logo-9208DB3EE5-seeklogo.com.png">
</div>

<h2>Shiba's Homelab</h2>

[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square&labelColor=000000)](#license)
![Last Commit](https://img.shields.io/github/last-commit/ldatb/homelab?style=flat-square)

</div>

## Introduction

The project contains a set of helm charts and ansible playbooks used to setup (and manage) a personal homelab infrastructure. I don't use anything critical on it, only for learning, development and fun purposes.

### Features

* [ ] Automated bare metal provisioning with PXE boot
* [ ] Automated Kubernetes installation and management
* [ ] Installing and management of applications with GitOps
* [ ] Modular architecture
* [ ] Automated certificate management
* [ ] Expose services to the internet via CloudFlare
* [ ] Hypervisor to create custom VMs
* [ ] Private container registry
* [ ] CI/CD platform

### Applications and services

To install an application, use `helm install <app-name> <app-dir> --values <app-values>` (this should be changed in the future).

Before installing any application, I recommend having a look at the values.yaml file of it's Helm folder.

For a complete explanation of the applications, check [APPS_AND_SERVICES.md](APPS_AND_SERVICES.md)

#### Server Management

* [ ] [Flame](https://github.com/pawelmalak/flame) - Easily manage your apps and bookmarks with built-in editors.
* [ ] [Cockpit](https://github.com/cockpit-project/cockpit) -  Cockpit is a web-based graphical interface for servers.
* [ ] [OpenVPN](https://github.com/OpenVPN/openvpn/) - Open source VPN daemon.
* [ ] [Healthchecks](https://github.com/healthchecks/healthchecks) - CRON job monitoring service.
* [ ] [Glances](https://nicolargo.github.io/glances/) - An Eye on your system.

#### File storage & sharing
* [ ] [NextCloud](https://github.com/nextcloud/server) - Nextcloud puts your data at your fingertips, under your control.
* [ ] [Immich](https://github.com/immich-app/immich) - Photo and video backup solution.
* [ ] [Paperless-NGX](https://github.com/paperless-ngx/paperless-ngx) - Scan, index and archive all your physical documents.
* [ ] [PrivateBin](https://privatebin.info/) - Online pastebin where the server has zero knowledge of pasted data.
* [ ] [Kopia](https://kopia.io/) - Fast and secure open source backup.

#### Security
* [ ] [BitWarden](https://github.com/bitwarden/server) - Password management solution.

#### Development tools
* [ ] [Gitea](https://gitea.io/en-us/) - Git with a cup of tea.
* [ ] [Harbor](https://goharbor.io/) - Cloud native registry project that stores, signs, and scans content.
* [ ] [Jenkins](https://www.jenkins.io/) - Open source automation server.

#### Services
* [ ] [TrueNAS Core](https://www.truenas.com/download-truenas-core/) - Open source NAS solution.
* [ ] [Grafana](https://grafana.com/) + [Prometheus](https://prometheus.io/) - Monitoring solution.
* [ ] [NGINX](https://www.nginx.com/) - Web server.
* [ ] [MetalLB](https://metallb.universe.tf/) - Load balancer for bare metal Kubernetes clusters.
* [ ] [ExternalDNS](https://github.com/kubernetes-sigs/external-dns) - Configure external DNS servers for Kubernetes.
* [ ] [Cert-manager](https://cert-manager.io/) - Automate certificate management in Kubernetes.

## Hardware

For the moment, this is a simple single-node kubernetes cluster, so I recommend you have at least 8GB of RAM and 8 CPUs.
Since (for the time being) this is a very simple project, there's no requirements for fancy equipment. The only thing I'd recommend is having a powerful internet connection, router and cables. Things can get wild...
It is nice to have at least 512 GB of disk space.

## Setup

You need a tool called [Just](https://github.com/casey/just) to run the commands. It's a simple task runner that I use to simplify the commands. It's super simple to install, there are clear instructions on the repository page.

To bootstrap the environment, first update the `ansible-install-inventory` and `ansible-install-overrides.yml` files with the information required. After that, you can simply run `just bootstrap` and the homelab will be ready to use.

After the bootstrap is done, I highly recommend you to remove your password and only use an SSH key. To understand how to create an SSH key, [check this article](https://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/).

## Roadmap

**STATUS: Alpha**

This project is still in the experimental stage, and I don't use anything critical on it. Expect breaking changes that may require a complete redeployment.

### Released

* N/A

### Planned for next release

* Automated controller set up (QEMU/KVM, Docker, K3s)
* Automated cluster creation
* Automated application deployment
* Automated certificate management
* Automated DNS management

### Planned for future releases

* Automated bare metal provisioning (PXE Boot)
* Private container registry
* Single command to deploy all apps
* Applications
  * NextCloud
  * Immich
  * Paperless-NGX
  * BitWarden
  * Kopia
  * Jenkins
  * Gitea
  * PrivateBin
* Observability
  * Applications monitoring
  * System monitoring
  * CRON jobs monitoring
  * Logging
  * Alerting
* Core applications
  * TrueNAS Core
  * Flame
  * Cockpit

### Unplanned

* Serverless
* Add support for worker nodes
* Migration from K3s to K8s
* Cluster API
* RAID

## License

Copyright &copy; 2023 Lucas de Ataides

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## References

* [Khue's Homelab](https://github.com/khuedoan/homelab)
* [Self Hosting Guide](https://github.com/mikeroyal/Self-Hosting-Guide)
* [Lento's Homelab](https://github.com/lento234/homelab)
* [Ansible for DevOps Examples](https://github.com/geerlingguy/ansible-for-devops)
* [Ansible NAS](https://github.com/davestephens/ansible-nas)
* [Awesome-Selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted)
