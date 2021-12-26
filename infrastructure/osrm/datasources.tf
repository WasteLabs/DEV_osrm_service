data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "waste-labs-terraform-backends"
    key     = "env:/${terraform.workspace}/DEV_OSRM_SERVICE/vpc.tfstate"
    region  = var.tags.region
  }
}
