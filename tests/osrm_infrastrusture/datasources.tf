data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "waste-labs-terraform-infrastructure"
    key     = "services/test/osrm/osrm_vpc.tfstate"
    region  = "eu-west-2"
  }
}
