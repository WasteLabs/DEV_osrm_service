terraform {
  required_version = "> 1.0.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.70.0"
    }
  }
  backend "s3" {
    bucket  = "waste-labs-terraform-backends"
    key     = "DEV_OSRM_SERVICE/osrm.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}