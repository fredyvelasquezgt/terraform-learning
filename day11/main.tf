locals {
  formatted_project_name = lower(replace(var.project_name, " ", "-"))
}

resource "aws_s3_bucket" "firsts3" {
  bucket = "hellofredytutorial-gt"
  tags = {
    "env" = "dev"
  }
}