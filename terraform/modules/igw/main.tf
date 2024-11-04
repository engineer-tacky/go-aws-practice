resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "ecs_go_echo_igw"
  }
}

# resource "aws_internet_gateway_attachment" "igw_attachment" {
#   vpc_id              = var.vpc_id
#   internet_gateway_id = aws_internet_gateway.igw.id
# }
