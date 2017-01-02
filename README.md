# Ubuntu Custom ISO Creator

## AIM

To automatically install just enough Ubuntu LTS (JeOS) to my workstation so that I can then use Ansible + [pajuna](https://github.com/pajuna/Ubuntu-LTS) to build out a complete workstation.

## Repo Contents

In here you will find an Ansible playbook that will remaster an Ubuntu LTS iso complete with preseed, encrypted LVM partman recipe and postinstall script.

## Requirements

`bootstrap.sh` will take care of the following (with the exception of downloading the iso) if you are on Ubuntu.  

The following requirements should be met:

* Installed via apt-get
  * git
  * isolinux
  * genisoimage
  * python
  * python-pip
  * python-dev
  * python-jinja2
* Installed via python-pip
  * ansible `sudo pip install ansible`
* Have a copy of `ubuntu-14.04.3-server-amd64.iso` available in the `iso/` directory.

## Building your custom Ubuntu LTS JeOS ISO

Tune `playbooks/settings.yml`
Run the playbook

``` bash
ansible-playbook playbooks/bake.yml -K
```

**Note: Currently only works with Ubuntu 14.04 Server amd64 iso**

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com)</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2016 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the MIT License, see <a href="https://github.com/pajuna/ubuntu-custom-iso/blob/master/LICENSE">LICENSE</a></td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>
