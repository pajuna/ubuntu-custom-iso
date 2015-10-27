# Ubuntu Custom ISO Creator

## AIM

To automatically install just enough Ubuntu LTS (JeOS) to my workstation so that I can then use Ansible + [pajuna](https://github.com/pajuna/Ubuntu-LTS) to build out a complete workstation.

## Repo Contents

In here you will find an Ansible playbook that will remaster an Ubuntu LTS iso complete with preseed, encrypted LVM partman recipe and postinstall script.

## Requirements

The following packages should be installed (via apt):

* git
* isolinux
* genisoimage
* python
* python-pip
* python-dev
* python-jinja2

Install Ansible via pip `sudo pip install -r requirements.txt`
Have a copy of `ubuntu-14.04.1-server-amd64+mac.iso` available in the `iso/` directory.

## Building your custom Ubuntu LTS JeOS ISO

Tune `playbooks/settings.yml`
Run the playbook

``` bash
ansible-playbook playbooks/bake.yml -K
```
<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2015 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the MIT License, see [LICENSE](LICENSE)</td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>

