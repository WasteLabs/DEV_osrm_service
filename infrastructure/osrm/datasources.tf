data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "waste-labs-terraform-infrastructure"
    key     = "env:/dev/DEV_OSRM_SERVICE/vpc.tfstate"
    region  = "us-east-1"
  }
}
