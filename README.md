Description
===========

Creates LVM partitions defined in node attributes.

Requirements
============

* LVM cookbook

Rationale
=========

The LVM cookbook comes with handy providers to fiddle with LVM.
However it doesn't allow to create partitions from node attributes.
LVM-ext fills that gap.

Attributes
==========

`node['lvm']` - namespace to define partitions

    "lvm": {
      "vg0": {
        "partitions": [
          {
            "name": "home",
            "size": "100G",
            "fs": "ext4",
            "mount_point": "/home",
            "mount_options": "defaults,noatime,errors=remount-ro",
            "contiguous": true
          },
          {
            "name": "vm-user-1",
            "size": "40G",
            "fs": "xfs",
            "mount_point": "/var/lib/kvm/user-1",
            "dump": 0,
            "pass": 0
          }
        ]
      }
    }

Volume groups are expected to be already created.

License and Author
==================

Author:: Michał Łomnicki (<michal.lomnicki@gmail.com>)

Copyright:: 2012, VPSLab

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

