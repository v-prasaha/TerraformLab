variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "vnet_name" {
  type        = string
  description = "Virtual network name"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "VNet address space"
}

variable "app_subnet_name" {
  type = string
}

variable "app_subnet_prefix" {
  type = list(string)
}

variable "environment" {
  type = string
}