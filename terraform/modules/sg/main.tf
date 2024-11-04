resource "aws_security_group" "ecs_go_echo_public_sg" {
  vpc_id = var.vpc_id
  name   = "ecs_go_echo_public_sg"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ecs_go_echo_public_sg"
  }
}
