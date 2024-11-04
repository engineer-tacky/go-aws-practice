variable "repository_url" {
  description = "The URL of the ECR repository"
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

variable "ecs_go_echo_public_sg_id" {
  description = "The ID of the security group for the ECS Go Echo service"
  type        = string
}
