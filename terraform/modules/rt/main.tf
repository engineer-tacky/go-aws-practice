resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = "ecs_go_echo_public_rt"
  }
}

resource "aws_route" "public_rt_internet_gateway" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}

resource "aws_route_table_association" "public_rt_association_a" {
  subnet_id      = var.public_subnet_a_id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_rt_association_c" {
  subnet_id      = var.public_subnet_c_id
  route_table_id = aws_route_table.public_rt.id
}
