# Configure AWS provider to establish a secure connection between Terraform and AWS
provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "Automation"  = "terraform"
      "Project"     = var.project_name
      "Environment" = var.environment
    }
  }
}

# Configure Terraform backend for state management
terraform {
  backend "s3" {
    bucket         = "cloud-computing-webserver"
    key            = "global/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "cloud-computing-webserver"
  }
}
