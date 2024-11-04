resource "aws_vpc" "ecs_go_echo_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ecs_go_echo_vpc"
  }
}
