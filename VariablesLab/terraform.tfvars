location            = "westeurope"
resource_group_name = "rg-tf-var-demo"
vnet_name           = "vnet-var-demo"
vnet_address_space  = ["10.10.0.0/16", "172.16.0.0/16"]
app_subnet_name     = "snet-app"
app_subnet_prefix   = ["10.10.1.0/24"]
environment         = "Dev"