resource "libvirt_network" "internal"{
  name = "internal"
  mode = "none"
  bridge = "br-internal"
  addresses = ["192.168.0.0/24"]
  dhcp {
    enabled = "false"
  }
  autostart = "true"
}

resource "libvirt_network" "private"{
  name = "private"
  mode = "nat"
  bridge = "br-private"
  addresses = ["10.0.0.0/24"]
  dhcp {
    enabled = "false"
  }
  autostart = "true"
}

resource "libvirt_network" "public"{
  name = "public"
  mode = "route"
  bridge = "br-public"
  addresses = ["2a01:4f8:212:5cf::/64"]
  dhcp {
    enabled = "false"
  }
  autostart = "true"
}
