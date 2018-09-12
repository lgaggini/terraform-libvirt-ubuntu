resource "libvirt_volume" "root" {
  name = "${var.hostname}_root"
  pool = "kvm_storage_pool"
  source = "images/ubuntu-${var.ubuntu_version}-server-cloudimg-amd64.raw"
}

resource "libvirt_volume" "data" {
  name = "${var.hostname}_data"
  pool = "kvm_storage_pool"
  size = "${var.data_partition_size}"
  format = "raw"
}

resource "libvirt_cloudinit" "cloudinit" {
  name = "${var.hostname}_cloudinit.iso"
  pool = "kvm_storage_pool"
  local_hostname = "${var.hostname}"
  user_data = "${file("cloudinit/${var.hostname}_user_data.yaml")}"
}

resource "libvirt_domain" "host" {

  # init
  name = "${var.hostname}"
  metadata = "${var.metadata}"
  vcpu = "${var.vcpu}"
  memory = "${var.memory}"
  running = "${var.running}"
  autostart = "${var.autostart}"

  cloudinit = "${libvirt_cloudinit.cloudinit.id}"

  # file systems
  disk {
    volume_id = "${libvirt_volume.root.id}"
  }
  disk {
    volume_id = "${libvirt_volume.data.id}"
  }

  # networks
  network_interface {
    network_id = "${var.networks_id["internal"]}"
    addresses = "${var.networks_addr["internal"]}"
  }
  network_interface {
    network_id = "${var.networks_id["private"]}"
    addresses = "${var.networks_addr["private"]}"
  }
 network_interface {
    network_id = "${var.networks_id["public"]}"
    addresses = "${var.networks_addr["public"]}"
  }

  # console
  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }
}
