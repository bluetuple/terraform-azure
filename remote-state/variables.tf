# varibales.tf
## All variable definitions will go here

variable "sbx_resgroup_name" {
  type        = string
  description = "The resurcegroup for state file storage account"
}

variable "sbx_default_location" {
  type        = string
  description = "default location"
}

variable "sbx_tf_storage_account" {
  type        = string
  description = "storage account used for terraform backend state"
}

