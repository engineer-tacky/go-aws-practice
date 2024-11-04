output "vpc_id" {
  value = aws_vpc.ecs_go_echo_vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.ecs_go_echo_vpc.cidr_block
}
