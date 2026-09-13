variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-function-api-project"
}

variable "function_app_name" {
  description = "Globally unique Function App name"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
}


