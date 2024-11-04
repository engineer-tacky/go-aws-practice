output "subnet_id_public_a_id" {
  value = aws_subnet.ecs_go_echo_public_subnet_a.id
}

output "subnet_id_public_c_id" {
  value = aws_subnet.ecs_go_echo_public_subnet_c.id
}

output "subnet_id_private_a_id" {
  value = aws_subnet.ecs_go_echo_private_subnet_a.id
}

output "subnet_id_private_c_id" {
  value = aws_subnet.ecs_go_echo_private_subnet_c.id
}
