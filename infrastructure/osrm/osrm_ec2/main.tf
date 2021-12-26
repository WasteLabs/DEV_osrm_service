provider "aws" {
  region = var.region
}

module "osrm_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4"

  name        = var.name
  description = "OSRM backend access"
  vpc_id      = var.vpc_id

  # ingress
  ingress_with_cidr_blocks = [
    {
      from_port   = 5000
      to_port     = 5000
      protocol    = "tcp"
      description = "OSRM endpoint"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "ssh"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Access to whole infrastructure"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

}


resource "aws_instance" "osrm_instance" {
  
  lifecycle {
    create_before_destroy = true
  }

  count = length(var.pbf_files_to_instance_type)

  ami           = var.ami
  instance_type = var.pbf_files_to_instance_type[count.index][1]
  key_name      = var.ssh_key

  subnet_id = var.subnet_id
  security_groups = [module.osrm_sg.security_group_id]
  associate_public_ip_address = true

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 30
  }

  tags = {
    Name = "osrm_instance_${count.index}"
    PBF = "${var.pbf_files_to_instance_type[count.index][0]}"
  }

  user_data = <<EOF
#!/bin/bash

echo "version: '3'
services:
    osrm_service:
        image: ${var.osrm_base_docker_image}
        environment:
        - OSRM_PBF_URL=${var.pbf_files_to_instance_type[count.index][0]}
        - OSRM_GRAPH_PROFILE_URL=${var.osrm_graph_profile_url}
        - OSRM_MAX_MATCHING_SIZE=86400
        ports:
        - 5000:5000
" > docker-compose.yaml;

sudo docker-compose -f docker-compose.yaml up -d;
EOF

}