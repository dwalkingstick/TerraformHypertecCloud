variable "AclSsh" {
  type = string
  description = "The acl for holding ssh rules."
  default = "acl-terraform"
}

variable "api_key" {
  type = string
  description = "The api key."
  default = "Fft0huDeXCYxRBnMa1CklQ=="
  sensitive = true
}

variable "Cidr" {
  type = string
  description = "The cidr for the network."
  default = "10.1.0.0/16"
}

variable "CpuCount" {
  type = number
  description = "The number of CPUs (1-16)."
  default = 1
}

variable "environment_id" {
  type = string
  description = "The id for the environment."
  default = "1066db8b-c84a-4907-b000-6a7237a5b8e5"
  sensitive = true
}

variable "Memory" {
  type = number
  description = "The amount of memory in mb."
  default = 1024
}

variable "NetworkId" {
  type = string
  description = "The id for the network."
  default = "bc56c1f1-c02a-4886-9938-6abf64f95796"
  sensitive = true
}

variable "OsDiskSize" {
  type = number
  description = "The size of the os disk in gb (8-500)."
  default = 100
}

variable "OsTemplate" {
  type = string
  description = "The os to use for the virtual machine."
  default = "ubuntu 20.04"
}

variable "Size" {
  type = string
  description = "The size of the virtual machine."
  default = "nvme flash"
}

variable "SshKeyName" {
  type = string
  description = "The name for the ssh key."
  default = "public_key"
}

variable "VirtualMachineName" {
  type = string
  description = "The base name for the virtual machine."
  default = "vm-terraform-dev-hyp-eastus"
}

variable "WorkerNodes" {
  type = string
  description = "The number of worker nodes to create."
  default = "1"
}