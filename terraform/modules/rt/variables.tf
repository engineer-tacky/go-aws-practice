variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "igw_id" {
  description = "The ID of the Internet Gateway"
  type        = string
}

variable "public_subnet_a_id" {
  description = "The ID of the public subnet A"
  type        = string
}

variable "public_subnet_c_id" {
  description = "The ID of the public subnet C"
  type        = string
}
