# Project 2 – IAM & Security

This Terraform project demonstrates creating AWS IAM users and roles with least-privilege policies.

## Features
- Create IAM user: gerald_user
- Attach AWS managed policy: ReadOnlyAccess
- Create IAM role: gerald_role
- Attach custom least-privilege policy
- Output the user and role names

## Requirements
- AWS CLI configured
- Terraform installed

## How to run
terraform init
terraform plan -var "username=gerald_user"
terraform apply -var "username=gerald_user"

## Mock Apply / Plan Output

The following Terraform plan demonstrates the IAM infrastructure that would be created:

```bash
cat plan_output.txt


## Outputs
- IAM user name
- IAM role name

## Mock Apply / Plan Output
cat plan_output.txt

