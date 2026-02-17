# main.tf – Project 2: IAM & Security

provider "aws" {
  region = "us-east-1"
}

# Create IAM user
resource "aws_iam_user" "gerald_user" {
  name = var.username
  path = "/"
}

# Attach AWS managed ReadOnlyAccess policy to the user
resource "aws_iam_user_policy_attachment" "user_readonly" {
  user       = aws_iam_user.gerald_user.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

# Create an IAM role
resource "aws_iam_role" "gerald_role" {
  name = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# Attach AWS managed policy to the role (least privilege example)
resource "aws_iam_role_policy_attachment" "role_readonly" {
  role       = aws_iam_role.gerald_role.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

# Outputs
output "iam_user_name" {
  description = "The IAM user created"
  value       = aws_iam_user.gerald_user.name
}

output "iam_role_name" {
  description = "The IAM role created"
  value       = aws_iam_role.gerald_role.name
}

