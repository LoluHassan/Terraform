variable "resource_group_location" {
  type        = string
  default     = "uksouth"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "storage-account"
  description = "The resource group name"
  
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
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

variable "environment" {
  type        = string
  default     = "staging"
  description = "The environment for the resources."
  
}