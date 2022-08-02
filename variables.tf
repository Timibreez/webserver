variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "East US"
}

variable "username" {
  description = "The admin username to be used."
}

variable "password" {
  description = "The admin password to be used"
}

variable "vm-count" {
  description = "The amount of VMs that will be created."
}

variable "vm-update-count" {
  description = "The amount of VMs that will be created when a specific one is updating the OS system."
  default     = 5
}

variable "vm-fault-count" {
  description = "The amount of VMs that will be created when a specific one is failing or having any kind of issues."
  default     = 3
}
