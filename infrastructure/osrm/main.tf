provider "aws" {
  region = var.tags.region
}


module "osrm_instances" {

  source  = "./ec2/"

  # == EC2 INSTANCE PARAMETERS ==
  region = data.terraform_remote_state.vpc.outputs.region
  name = data.terraform_remote_state.vpc.outputs.project_name
  ami = var.ami
  ssh_key = var.ssh_key

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  vpc_cidr = data.terraform_remote_state.vpc.outputs.vpc_cidr
  subnet_id = data.terraform_remote_state.vpc.outputs.osrm_subnets[0] 
  subnet_cidr = data.terraform_remote_state.vpc.outputs.osrm_cidr[0]

  # == OSRM NODES PARAMETERS ==
  osrm_base_docker_image = var.osrm_base_docker_image
  pbf_files_to_instance_type = var.pbf_files_to_instance_type
  osrm_graph_profile_url = var.osrm_graph_profile_url

}