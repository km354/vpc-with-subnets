variable "aws_region" {
  description = "aws region applying to"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "cidr block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "all of my different availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "cidr_public_subnets" {
  description = "all public subnet cidr blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "cidr_private_subnets" {
  description = "all private subnet cidr blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}