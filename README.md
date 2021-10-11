# **DEV_OSRM**

[Reference to original repository](https://github.com/Project-OSRM/osrm-backend)
Repository with dockerized back-end of OSRM

# **Terraform module**

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_osrm_sg"></a> [osrm\_sg](#module\_osrm\_sg) | terraform-aws-modules/security-group/aws | ~> 4 |

## Resources

| Name | Type |
|------|------|
| [aws_instance.osrm_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI id image will be used as base for OSRM images | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Project Name | `string` | n/a | yes |
| <a name="input_osrm_base_docker_image"></a> [osrm\_base\_docker\_image](#input\_osrm\_base\_docker\_image) | Docker base image used for deployment OSRM services | `string` | `"wastelabs/osrm-base-image:0.1.0"` | no |
| <a name="input_osrm_graph_profile_url"></a> [osrm\_graph\_profile\_url](#input\_osrm\_graph\_profile\_url) | environment variable of docker image - OSRM\_GRAPH\_PROFILE\_URL | `string` | `"https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua"` | no |
| <a name="input_pbf_files_to_instance_type"></a> [pbf\_files\_to\_instance\_type](#input\_pbf\_files\_to\_instance\_type) | [<`pbf` url>, <instance type>] | `list(tuple([string, string]))` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of infrastructure deployment | `string` | n/a | yes |
| <a name="input_ssh_key"></a> [ssh\_key](#input\_ssh\_key) | ssh keys for access to aws in local development | `string` | `""` | no |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | Subnet CIDR module must be deployed | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID module must be deployed | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR OSRM services must be deployed | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID OSRM services must be deployed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pbf_files_to_public_ip"></a> [pbf\_files\_to\_public\_ip](#output\_pbf\_files\_to\_public\_ip) | n/a |
