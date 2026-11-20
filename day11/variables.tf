variable "environment" {
  default = "dev"
  type    = string
}

variable "region" {
  default = "us-east-1"
  type    = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "monitoring_enable" {
  description = "Enable detailed monitoring when true"
  type        = bool
  default     = false
}

variable "associate_public_ip_address" {
  description = "Associate public IP with EC2 instances"
  type        = bool
  default     = true
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = list(string)
  default     = ["10.0.0.0/8", "192.168.0.0/16", "172.16.0.0/12"]
}

variable "allowed_vm_types" {
  description = "List of allowed VM types"
  type        = list(string)
  default     = ["t2.micro", "t2.small", "t3.micro", "t3.small"]
}

variable "allowed_regions" {
  description = "List of allowed AWS Regions"
  type        = set(string)
  default     = ["us-east-1", "us-west-2", "eu-west-1"]
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Name        = "dev-Instance"
    created_by  = "terraform"
  }
}


variable "ingress_values" {
  type    = tuple([number, string, number])
  default = [443, "tcp", 443]
}

variable "config" {
  type = object({
    region         = string,
    monitoring     = bool,
    instance_count = number
  })
  default = {
    instance_count = 1,
    monitoring     = false,
    region         = "us-east-1"
  }
}

variable "bucket_names" {
  description = "List of S3 bucket names to create"
  type = list(string)
  default = [ "my-unique-bucket-day08-fredy1", "my-unique-bucket-day08-fredy2"]

}

variable "bucket_names_set" {
  description = "List of S3 bucket names to create"
  type = set(string)
  default = [ "my-unique-bucket-day08-fredy11", "my-unique-bucket-day08-fredy22"]
}

variable "ingress_rules" {
  description = "List of ingress rules for SG"
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
    description = string 
  }))
  default = [ {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "HTTP"
  },
  {
    from_port = 443
    to_port = 443
    tcp = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "HTTPS"
  }
  ]
}