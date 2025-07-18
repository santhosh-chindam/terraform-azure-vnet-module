variable "name" {
  type        = string
  description = "VNet name"
}

variable "address_space" {
  type        = list(string)
  description = "CIDR blocks for VNet"
}

variable "subnets" {
  type        = map(list(string))
  default     = {}
  description = "Subnets map"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "RG name"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for resources"
}

variable "create_nsg" {
  type        = bool
  default     = false
  description = "Create NSG?"
}

variable "nsg_rules" {
  type = map(object({
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default     = {}
  description = "NSG rules"
}
