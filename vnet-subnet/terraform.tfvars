resource_group_name = "rg-tf-lab01"
vnet_name           = "vnet-tf-lab01"
vnet_cidr           = "10.10.0.0/16"
subnet_name         = "subnet-tf-lab01"
subnet_cidr         = "10.10.1.0/24"

tags = {
  project = "terraform-azure-labs"
  lab     = "lab01"
  owner   = "aj"
}