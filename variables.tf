# hostname of the virtual machine
variable "hostname" {
  type = "string"
}

# metadata of the virtual machine
variable "metadata" {
  type = "string"
  default = ""
}

# ubuntu cloud image version, used to retrieve the image from the file system
variable "arch_version" {
  type = "string"
  default = "latest"
}

# virtual cpu(s) available for the virtual machine
variable "vcpu" {
  default = "2" 
}

# memory available for the virtual machine
variable "memory" {
  default = 512 
}

# size of the data partition, the default is 10GB
variable "data_partition_size" {
  default = 10737418240
}

# map of the networks terraform id (internal, private and public network)
variable "networks_id" {
  type = "map"
}

# map of the network address (internal, private and public network)
variable "networks_addr" {
  type = "map"
}

# start the virtual machine after creation
variable "running" {
  type = "string"
  default = "false"
}

# start the virtual machine at boot
variable "autostart" {
  type = "string"
  default = "false"
}
