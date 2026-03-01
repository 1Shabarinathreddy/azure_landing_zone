# ─── Replace these values with your actual IDs ───────────────────────────────
management_subscription_id = "00000000-0000-0000-0000-000000000000"
root_management_group_id   = "00000000-0000-0000-0000-000000000000" # Tenant ID

# ─── Core Configuration ───────────────────────────────────────────────────────
location    = "eastus2"
environment = "prod"

# ─── Networking ───────────────────────────────────────────────────────────────
hub_vnet_address_space = ["10.0.0.0/16"]
gateway_subnet_cidr    = "10.0.1.0/27"
firewall_subnet_cidr   = "10.0.2.0/26"
bastion_subnet_cidr    = "10.0.3.0/27"
identity_subnet_cidr   = "10.0.4.0/24"
dns_servers            = []

# ─── Logging ──────────────────────────────────────────────────────────────────
log_analytics_workspace_sku = "PerGB2018"
log_retention_days          = 90

# ─── Tags ─────────────────────────────────────────────────────────────────────
tags = {
  ManagedBy   = "Terraform"
  Project     = "AzureLandingZone"
  Environment = "prod"
  CostCenter  = "Platform"
  Owner       = "CloudOps"
}
