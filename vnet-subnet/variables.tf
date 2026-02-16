variable "location" {
  type        = string
  description = "Azure region for all resources"
  default     = "eastus"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtal network"
}

variable "vnet_cidr" {
  type        = string
  description = "CIDR block for the vnet"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR block from the subnet"
}

variable "tags" {
  type        = map(string)
  description = "Tags applies to resources"
  default     = {}
}