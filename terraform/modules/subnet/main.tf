resource "aws_subnet" "ecs_go_echo_public_subnet_a" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "ecs_go_echo_public_subnet_a"
  }
}

resource "aws_subnet" "ecs_go_echo_public_subnet_c" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "ecs_go_echo_public_subnet_c"
  }
}

resource "aws_subnet" "ecs_go_echo_private_subnet_a" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "ecs_go_echo_private_subnet_a"
  }
}

resource "aws_subnet" "ecs_go_echo_private_subnet_c" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "ecs_go_echo_private_subnet_c"
  }
}
