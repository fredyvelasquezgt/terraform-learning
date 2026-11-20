terraform {
  backend "s3" {
    bucket       = "techtutorials-fredy-terrraform-state"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}


  