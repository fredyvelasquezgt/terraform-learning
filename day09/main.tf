resource "aws_instance" "example" {

  ami = "ami-0ff8a91507f77f867"
  instance_type = var.allowed_vm_types[1]
  region = var.region
  tags = var.tags

  lifecycle {
    create_before_destroy = true
  }
  
}