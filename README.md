![GitHub Release](https://img.shields.io/github/v/release/shakir85/Terraform-Modules) [![TF Docs](https://github.com/shakir85/Terraform-Modules/actions/workflows/docs.yml/badge.svg)](https://github.com/shakir85/Terraform-Modules/actions/workflows/docs.yml) [![TF Lint](https://github.com/shakir85/Terraform-Modules/actions/workflows/lint.yml/badge.svg)](https://github.com/shakir85/Terraform-Modules/actions/workflows/lint.yml) ![License](https://img.shields.io/github/license/shakir85/Terraform-Modules) ![Issues](https://img.shields.io/github/issues/shakir85/Terraform-Modules)

## Overview

This repository contains reusable Terraform modules for managing Proxmox infrastructure.

## Provider in use

- [bpg/proxmox](https://registry.terraform.io/providers/bpg/proxmox/latest) For VMs, and image files.
- [telmate/proxmox](https://registry.terraform.io/namespaces/Telmate) For LXC containers.

## Available Modules

- [VM](proxmox/vm/) resource, [Example script](./usage/proxmox.vm.md).
- [LXC](proxmox/lxc/) resource, [Example script](./usage/proxmox.lxc.md)
- [Cloud-image](proxmox/get-cloud-image/) file download into pve environment.
