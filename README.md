# Ubuntu Custom ISO Creator

## AIM

To remaster the Ubuntu 16.04 Server iso into an automatic installer with just enough Ubuntu Server LTS (JeOS) for my workstation/server, with optional full disk encryption, so that I can then use Ansible + [pajuna](https://github.com/pajuna/Ubuntu-LTS) to build out a complete system/workstation.

## Repo Contents

In here you will find an Ansible playbook that will remaster an Ubuntu LTS iso complete with preseed, encrypted or plain LVM parman recipe, postinstall script and an ssh keypair 'gpg --symetric' encrypted. (password is `Rouge1`)

## Requirements

The following requirements should be installed:

  * git
  * isolinux
  * syslinux-utils
  * genisoimage
  * python
  * python-pip
  * python-dev
  * python-jinja2
  * ansible
  * Have a copy of `ubuntu-16.04.*-server-amd64.iso` available in the `iso/` directory.

## Building your custom Ubuntu 16.04 LTS JeOS ISO

Tune `playbooks/lukslvm/settings.yml` OR ` playbooks/plainlvm/settings.yml`
Run the playbook

``` bash
ansible-playbook playbooks/bake.yml -K --extra-vars "DiskType=lukslvm" OR
ansible-playbook playbooks/bake.yml -K --extra-vars "DiskType=plainlvm"
```

## Installing Ubuntu JeOS

'Burn' the iso to an USB or CDROM and boot it.

`dd if=iso/ubuntu-16.04.3-jeos-amd64.iso of=/dev/sd*` # pick the correct device for you USB or CDROM.

**Warning: this will wipe your /dev/sd* and automatically install Ubuntu**

**Note: Currently only works with Ubuntu 16.04 Server amd64 iso with bios and uefi**

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com)</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2018 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the MIT License, see <a href="https://github.com/pajuna/ubuntu-custom-iso/blob/master/LICENSE">LICENSE</a></td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>
