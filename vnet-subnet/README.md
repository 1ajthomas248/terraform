# Lab 01 & 02 – Azure VNet, Subnet & NSG Deployment Using Terraform

## Overview

This lab demonstrates deploying core Azure networking infrastructure using Terraform (Infrastructure as Code).

Lab 01 focused on foundational networking resources.  
Lab 02 extends the deployment by adding network security controls.

Resources deployed:

- Azure Resource Group
- Azure Virtual Network (10.10.0.0/16)
- Azure Subnet (10.10.1.0/24)
- Azure Network Security Group (NSG)
- Inbound SSH Rule (TCP 22)
- NSG-to-Subnet Association

The goal of these labs is to understand Terraform’s workflow (init, plan, apply), variable management, state tracking, Azure resource dependency handling, and infrastructure security modeling.


## Architecture

Resource Group -> Virtual Network (10.10.0.0/16) -> Subnet (10.10.1.0/24) -> NSG -> Allow-SSH (TCP 22)

## Lab 01 – Networking Foundation
- Deployed VNet and Subnet
- Parameterized configuration using variables
- Used outputs to expose resource IDs
- Observed Terraform state behavior

## Lab 02 – Network Security
- Created Azure Network Security Group
- Defined inbound SSH rule (priority 100)
- Associated NSG with the subnet
- Extended existing infrastructure without redeploying core resources


## Key Terraform Concepts Demonstrated

- Providers: AzureRM provider used to interact with Azure APIs.
- Resources: Defined infrastructure components (RG, VNet, Subnet, NSG).
- Variables: Used to parameterize names, CIDRs, and location.
- Outputs: Exposed resource IDs after deployment.
- State: Terraform tracks deployed infrastructure using terraform.tfstate.
- Dependency Graph: Resources automatically deploy in correct order based on references.
- Incremental Changes: Infrastructure safely extended via `terraform plan` and `apply`.

## File Structure

main.tf          → Core resource definitions  
variables.tf     → Input variable declarations  
terraform.tfvars → Environment-specific values  
outputs.tf       → Output values after deployment  
.gitignore       → Prevents state and local files from being committed 

## Deployment Steps

terraform init
terraform validate
terraform plan
terraform apply

## Lessons Learned

- Terraform variable naming must match exactly or execution will fail.
- State files should never be committed to Git.
- The AzureRM provider automatically handles resource dependency order.
- Outputs are useful for debugging and integration with other modules.