config:
  environment.DISPLAY: :0
  environment.http_proxy: ""
  raw.idmap: both 1000 1000
  user.network_mode: ""
description: Default LXD profile
devices:
  X0:
    path: /tmp/.X11-unix/X0
    source: /tmp/.X11-unix/X0
    type: disk
  eth0:
    name: eth0
    nictype: bridged
    parent: lxdbr0
    type: nic
  mygpu:
    type: gpu
  root:
    path: /
    pool: default
    type: disk
name: default
