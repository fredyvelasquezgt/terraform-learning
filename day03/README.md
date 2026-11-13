# Day 03

## Key Learnings

- **Least-privilege IAM user:** Created a dedicated IAM user with limited permissions for testing in AWS, instead of using the root account, and signed in to the AWS Management Console with it.
- **What a provider is:** A provider is the plugin that connects Terraform to the AWS API. It translates the resources declared in HCL into the API calls that actually create, update, and delete infrastructure in AWS.
- **Configuring the provider:** Set up the AWS provider (source, version constraint, and region) and created my first AWS resource, an S3 bucket, by following the official Terraform Registry documentation.
- **Core Terraform workflow:**
  - `terraform init`: downloads the provider and initializes the working directory.
  - `terraform plan`: previews the changes Terraform will make.
  - `terraform apply`: creates or updates the resources.
  - `terraform destroy`: removes everything Terraform created, to avoid unexpected costs.
