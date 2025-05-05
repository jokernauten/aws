variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of Availability Zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Tags to apply to private subnets"
  type        = map(string)
  default = {
    Type = "private"
  }
}

variable "public_subnet_tags" {
  description = "Tags to apply to public subnets"
  type        = map(string)
  default = {
    Type = "public"
  }
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
