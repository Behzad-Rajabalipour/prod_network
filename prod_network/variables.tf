# Instance type
# variable "instance_type" {
#   default = {
#     "prod"    = "t2.micro"
#     "test"    = "t2.micro"
#     "staging" = "t2.micro"
#   }
#   description = "Type of the instance"
#   type        = map(string)
# }

# Provision public subnets in custom VPC
# variable "public_subnet_cidrs" {
#   default     = ["10.10.0.0/24", "10.10.1.0/24"]
#   type        = list(string)
#   description = "Public Subnet CIDRs"
# }

# Provision public subnets in custom VPC
variable "public_cidr_blocks" {
  default     = ["10.20.0.0/24", "10.20.1.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Provision private subnets in custom VPC
variable "private_cidr_blocks" {
  default     = ["10.20.2.0/24", "10.20.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "VPC to host static web site"
}

# Default tags
variable "default_tags" {
  default = {
    Owner = "Behzad"
    App   = "App"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Prefix to identify resources
variable "prefix" {
  default     = "default"
  type        = string
  description = "Name prefix"
}


# Variable to signal the current environment 
variable "env" {
  default     = "default"
  type        = string
  description = "Deployment Environment"
}
