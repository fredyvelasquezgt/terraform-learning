variable "project_name" {
  default = "Project ALPHA resource"
}

variable "region" {
  default = "us-east-1"
  type    = string
}

variable "default_tags" {
  default = {
    company = "TechCorp"
    managed_by = "terraform"
  }
}

variable "environment_tags" {
  default = {
    environment = "production"
    const_center = "cc-123"
  }
}

variable "bucket_name" {
  default = "ProjectAlpha Store !!"
}

variable "allowed_ports" {
  default = "80,443,8080,3306"
}

variable "instance_sizes" {
  default = {
    dev = "t2.micro"
    staging = "t3.small"
    prod = "t3.large"

  }
}

variable "environment" {
  default = "Dev"
}
