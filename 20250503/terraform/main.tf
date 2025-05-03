resource "aws_ecr_repository" "foo" {
  name                 = "curso-edit-backend"
  image_tag_mutability = "MUTABLE"
}