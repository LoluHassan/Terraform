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
  default     = "rg_"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "storage_account_name_prefix" {
  type        = string
  default     = "st"
  description = "Prefix of the storage account name that's combined with a random ID so name is unique in your Azure subscription."
  
}

variable "storage_account_name" {
  type        = string
  default     = "storageaccount"
  description = "The name of the Storage Account."
}

variable "storage_account_tier" {
  type        = string
  default     = "Standard"
  description = "The Tier to use for this Storage Account. Valid options are Standard and Premium."
}

variable "storage_account_replication_type" {
  type        = string
  default     = "LRS"
  description = "The Replication Type to use for this Storage Account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RA_GZRS."
}

variable "environment" {
  type        = string
  default     = "staging"
  description = "The environment for the resources."
  
}