<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.0.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | = 3.70.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_osrm_instances"></a> [osrm\_instances](#module\_osrm\_instances) | ./ec2/ | n/a |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.vpc](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI image used as baseline | `string` | `"ami-0a2c8ea16986f7bd8"` | no |
| <a name="input_osrm_base_docker_image"></a> [osrm\_base\_docker\_image](#input\_osrm\_base\_docker\_image) | Docker base image used for deployment | `string` | `"public.ecr.aws/u6u7x5n5/dev_osrm_service:1.0.0"` | no |
| <a name="input_osrm_graph_profile_url"></a> [osrm\_graph\_profile\_url](#input\_osrm\_graph\_profile\_url) | environment variable of docker image - OSRM\_GRAPH\_PROFILE\_URL | `string` | `"https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua"` | no |
| <a name="input_pbf_files_to_instance_type"></a> [pbf\_files\_to\_instance\_type](#input\_pbf\_files\_to\_instance\_type) | == OSRM NODES PARAMETERS == | `list(tuple([string, string]))` | <pre>[<br>  [<br>    "https://download.openstreetmap.fr/extracts/asia/singapore.osm.pbf",<br>    "t2.micro"<br>  ],<br>  [<br>    "https://download.openstreetmap.fr/extracts/oceania/australia/new_south_wales-latest.osm.pbf",<br>    "t2.micro"<br>  ],<br>  [<br>    "https://download.openstreetmap.fr/extracts/asia/china/hong_kong-latest.osm.pbf",<br>    "t2.micro"<br>  ]<br>]</pre> | no |
| <a name="input_ssh_key"></a> [ssh\_key](#input\_ssh\_key) | ssh key for access to servers | `string` | `"aws-us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags set to VPC | `map(string)` | <pre>{<br>  "project_name": "DEV_OSRM_SERVICE",<br>  "region": "us-east-1"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pbf_files_to_public_ip"></a> [pbf\_files\_to\_public\_ip](#output\_pbf\_files\_to\_public\_ip) | Mappings PBF files to OSRM instance public ip |
<!-- END_TF_DOCS -->