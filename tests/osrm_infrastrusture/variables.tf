# == COMMON PARAMETERS ==
variable ami {
  description = "AMI image used for bastion instance"
  type = string
  default = "ami-0b4d44f0f68cb30bc"
}

variable ssh_key {
  type        = string
  default     = "waste-labs-dev-london-eu-west-2"
  description = "ssh key for access to servers"
}

# == OSRM NODES PARAMETERS ==
variable pbf_files_to_instance_type {
  type = list(tuple([string, string]))
  default = [
      ["https://download.openstreetmap.fr/extracts/asia/singapore.osm.pbf",  "t2.micro"],
      ["https://download.openstreetmap.fr/extracts/oceania/australia/new_south_wales-latest.osm.pbf",  "t2.micro"],
      ["https://download.openstreetmap.fr/extracts/asia/china/hong_kong-latest.osm.pbf", "t2.micro"],
  ]
}

variable osrm_base_docker_image {
  type        = string
  default     = "wastelabs/osrm-base-image:0.1.0"
  description = "Docker base image used for deployment"
}

variable osrm_graph_profile_url {
  type        = string
  default     = "https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua"
  description = "environment variable of docker image - OSRM_GRAPH_PROFILE_URL"
}
