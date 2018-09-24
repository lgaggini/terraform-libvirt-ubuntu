# terraform-libvirt-kvm/examples

This example deploy and configure a virtual machines tf_test which has 3 networks (internal host only ipv4, private nat ipv4 and public routed ipv6) and 2 disks,
one for os and one for data.

Network interfaces are configured by cloud-init network config v2.

Os disk is created from a raw Ubuntu cloud images (converted from a qcow2 and resized to the size of 10GB) and data disk by cloudinit has a single partition ext4 formatted and
mounted on /mnt mountpoint. The default ubuntu user is configured with password ubuntu.
