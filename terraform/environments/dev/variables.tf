variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "northstar"
}

variable "vnet_address_space" {
  description = "Virtual network CIDR"
  type        = string
  default     = "10.20.0.0/16"
}
