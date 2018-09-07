provider "libvirt" {
  uri = "qemu:///system"
}

module "libvirt-ubuntu_1" {
  source = "../.."   

  hostname = "tf_test"
  networks_id = {
    internal = "${libvirt_network.internal.id}"
    private = "${libvirt_network.private.id}"
    public = "${libvirt_network.public.id}"
  } 
  networks_addr = {
    internal = ["192.168.0.2"]
    private = ["10.0.0.2"]
    public = ["2a01:4f8:212:5cf::3"]
  }
}

module "libvirt-ubuntu_2" {
  source = "../.."   

  hostname = "tf_test2"
  networks_id = {
    internal = "${libvirt_network.internal.id}"
    private = "${libvirt_network.private.id}"
    public = "${libvirt_network.public.id}"
  } 
  networks_addr = {
    internal = ["192.168.0.3"]
    private = ["10.0.0.3"]
    public = ["2a01:4f8:212:5cf::4"]
  }
}
