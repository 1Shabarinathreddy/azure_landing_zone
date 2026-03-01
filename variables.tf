variable "management_subscription_id" {
  description = "The subscription ID for the management subscription"
  type        = string
}

variable "root_management_group_id" {
  description = "The ID of the root management group (tenant ID)"
  type        = string
}

variable "root_management_group_name" {
  description = "Display name of the root management group"
  type        = string
  default     = "Tenant Root Group"
}

variable "management_group_hierarchy" {
  description = "Map defining the management group hierarchy"
  type = map(object({
    display_name = string
    parent_id    = string
  }))
  default = {
    "mg-platform" = {
      display_name = "Platform"
      parent_id    = "root"
    }
    "mg-management" = {
      display_name = "Management"
      parent_id    = "mg-platform"
    }
    "mg-connectivity" = {
      display_name = "Connectivity"
      parent_id    = "mg-platform"
    }
    "mg-identity" = {
      display_name = "Identity"
      parent_id    = "mg-platform"
    }
    "mg-landingzones" = {
      display_name = "Landing Zones"
      parent_id    = "root"
    }
    "mg-corp" = {
      display_name = "Corp"
      parent_id    = "mg-landingzones"
    }
    "mg-online" = {
      display_name = "Online"
      parent_id    = "mg-landingzones"
    }
    "mg-sandbox" = {
      display_name = "Sandbox"
      parent_id    = "root"
    }
    "mg-decommissioned" = {
      display_name = "Decommissioned"
      parent_id    = "root"
    }
  }
}

variable "location" {
  description = "Primary Azure region"
  type        = string
  default     = "eastus2"
}

variable "environment" {
  description = "Environment name (prod, dev, staging)"
  type        = string
  default     = "prod"
}

variable "hub_vnet_address_space" {
  description = "Address space for the hub virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "gateway_subnet_cidr" {
  description = "CIDR for the VPN Gateway subnet"
  type        = string
  default     = "10.0.1.0/27"
}

variable "firewall_subnet_cidr" {
  description = "CIDR for the Azure Firewall subnet"
  type        = string
  default     = "10.0.2.0/26"
}

variable "bastion_subnet_cidr" {
  description = "CIDR for the Azure Bastion subnet"
  type        = string
  default     = "10.0.3.0/27"
}

variable "identity_subnet_cidr" {
  description = "CIDR for the identity subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "dns_servers" {
  description = "Custom DNS servers for the hub VNet"
  type        = list(string)
  default     = []
}

variable "log_analytics_workspace_sku" {
  description = "SKU for the Log Analytics Workspace"
  type        = string
  default     = "PerGB2018"
}

variable "log_retention_days" {
  description = "Number of days to retain logs"
  type        = number
  default     = 90
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "AzureLandingZone"
  }
}
