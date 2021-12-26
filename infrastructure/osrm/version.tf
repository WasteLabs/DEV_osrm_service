terraform {
  required_version = "= 1.0.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.70.0"
    }
  }
  backend "s3" {
    bucket  = "waste-labs-terraform-backends"
    key     = "DEV_OSRM_SERVICE/osrm_instances.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}