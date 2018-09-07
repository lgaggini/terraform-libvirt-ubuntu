# terraform-libvirt-ubuntu

terraform-libvirt-ubuntu is a terraform module to deploy Ubuntu cloud images on KVM by libvirt and [terraform-provider-libvirt](https://github.com/dmacvicar/terraform-provider-libvirt).
Virtual machine deployed have 3 networks and two lvm disks (one for os where the ubuntu cloud image is deployed and one for data).

## Install
### Clone
```bash
git clone https://github.com/lgaggini/terraform-libvirt-ubuntu
```
## Configuration and usage
See the [examples folder](https://github.com/lgaggini/terraform-libvirt-ubuntu/tree/master/examples) for a simple use case.
