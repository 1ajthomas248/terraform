# Lab 01 – Azure VNet & Subnet Deployment Using Terraform

## Overview

This lab demonstrates deploying core Azure networking infrastructure using Terraform (Infrastructure as Code).

Resources deployed:
- Azure Resource Group
- Azure Virtual Network (10.10.0.0/16)
- Azure Subnet (10.10.1.0/24)

The goal of this lab is to understand Terraform’s workflow (init, plan, apply), variable management, state tracking, and Azure resource dependency handling.

## Architecture

Resource Group -> Virtual Network (10.10.0.0/16) -> Subnet (10.10.1.0/24)

## Key Terraform Concepts

- Providers: AzureRM provider used to interact with Azure APIs.
- Resources: Defined infrastructure components (RG, VNet, Subnet).
- Variables: Used to parameterize names, CIDRs, and location.
- Outputs: Exposed resource IDs after deployment.
- State: Terraform tracks deployed infrastructure using terraform.tfstate.
- Dependency Graph: Subnet automatically depends on VNet through reference.

## File Structure

main.tf          → Core resource definitions  
variables.tf     → Input variable declarations  
terraform.tfvars → Environment-specific values  
outputs.tf       → Output values after deployment  

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