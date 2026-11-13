# create s3 bucket

resource "aws_instance" "example" {
  count = 1
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  region        = var.region
  instance_type = "t2.micro"

  tags = {
    Environment = var.environment
    Name        = "${var.environment}-EC2-Instance"
  }

}


