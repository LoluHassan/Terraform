variable "resource_group_location" {
  type        = string
  default     = "uksouth"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "virtual-machine"
  description = "The resource group name"
  
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "virtual_machine_name_prefix" {
  type        = string
  default     = "vm"
  description = "Prefix of the storage account name that's combined with a random ID so name is unique in your Azure subscription."
  
}

variable "virtual_machine_name" {
  type        = string
  default     = "vir-mach"
  description = "The name of the Storage Account."
}

variable "environment" {
  type        = string
  default     = "staging"
  description = "The environment for the resources."
  
}

variable "vnet_name_prefix" {
  type        = string
  default     = "vn"
  description = "Prefix of the storage account name that's combined with a random ID so name is unique in your Azure subscription."
  
}

variable "vnet_name" {
  type        = string
  default     = "vnet"
  description = "The name of the Storage Account."
}

variable "os_disk_size_gb" {
  type        = number
  default     = 50
  description = "The size of the OS disk in GB."
}

variable "auto_update" {
  type        = bool
  default     = true
  description = "Enable automatic updates on the Windows VM."
}

