# variables.tf – Project 2

# IAM username
variable "username" {
  description = "Name of the IAM user to create"
  type        = string
  default     = "gerald_user"
}

# IAM role name
variable "role_name" {
  description = "Name of the IAM role to create"
  type        = string
  default     = "gerald_role"
}
