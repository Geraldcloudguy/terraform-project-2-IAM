# Project 2 – IAM & Security

This Terraform project demonstrates creating AWS IAM users and roles with least-privilege policies.

## Purpose / What it Demonstrates

This project demonstrates:

- Creating IAM users and roles with least-privilege permissions  
- Writing and applying IAM policies  
- Securing AWS resources using best practices  
- Understanding AWS IAM hierarchy and permissions  
- Managing users and roles programmatically and via the console


## Features
- Create IAM user: gerald_user
- Attach AWS managed policy: ReadOnlyAccess
- Create IAM role: gerald_role
- Attach custom least-privilege policy
- Output the user and role names

## Architecture Diagram

![Project 2 IAM Architecture](project-2.png)

## Architecture / Components

- **IAM Users** for different roles  
- **IAM Groups** for permission management  
- **IAM Roles** for EC2 access  
- **Policies** implementing least-privilege access  
- **AWS Console & CLI** used for management and testing

## Objectives

- Create IAM users, groups, and roles with least-privilege policies  
- Secure AWS resources following best practices  
- Test permissions using AWS Console and CLI  
- Document IAM setup and access controls  


## Requirements
- AWS CLI configured
- Terraform installed

## How to Run / Apply Policies

1. Configure your AWS credentials  
2. Apply IAM users, groups, and roles using Terraform or the console  
3. Attach policies to users, groups, or roles  
4. Verify permissions with AWS CLI or Console  

## Outputs / What You Get

- **IAM Users** created for different roles  
- **IAM Groups** with correct permissions  
- **IAM Roles** attached to EC2 instances  
- **Policies** enforcing least-privilege access  
- Documentation of permissions and testing steps

## Cost Controls

- Free Tier eligible resources only  
- No always-on paid services  
- Manual cleanup recommended after testing  

## Cleanup

- Delete IAM users, groups, and roles created for testing  
- Remove any attached policies no longer needed

  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
