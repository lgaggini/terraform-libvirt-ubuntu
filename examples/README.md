# terraform-libvirt-kvm/examples

This example deploy and configure 2 virtual machines, tf_test and tf_test2. Both have 3 networks (internal host only ipv4, private nat ipv4 and public routed ipv6) and 2 disks,
one for os and one for data. Waiting for [network init support](https://github.com/dmacvicar/terraform-provider-libvirt/pull/309) in terraform-provider-libvirt network interfaces are
configured by writing netplan file by cloudinit. Os disk is created from a raw Ubuntu cloud images (converted from a qcow2 and resized to the size of 10GB) and data disk by cloudinit
has a single partition ext4 formatted and mounted on /mnt mountpoint. The default ubuntu user is configured with password ubuntu.
