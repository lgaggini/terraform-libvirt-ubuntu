variable "hostname" {
  type = "string"
}

variable "metadata" {
  type = "string"
  default = ""
}

variable "ubuntu_version" {
  type = "string"
  default = "18.04"
}

variable "vcpu" {
  default = "2" 
}

variable "memory" {
  default = 512 
}

variable "data_partition_size" {
  default = 10737418240
}

variable "networks_id" {
  type = "map"
}

variable "networks_addr" {
  type = "map"
}

