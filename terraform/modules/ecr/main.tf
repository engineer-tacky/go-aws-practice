resource "aws_ecr_repository" "ecs_go_echo_ecr" {
  name         = "ecs-go-echo"
  force_delete = true
}
