terraform {
  required_version = "= 1.0.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.62.0"
    }
  }
  backend "s3" {
    bucket  = "waste-labs-terraform-infrastructure"
    key     = "services/test/osrm/osrm_vpc.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }
}