<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.0.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | = 3.70.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 2 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tags"></a> [tags](#input\_tags) | Tags set to VPC | `map(string)` | <pre>{<br>  "project_name": "DEV_OSRM_SERVICE",<br>  "region": "us-east-1"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_osrm_cidr"></a> [osrm\_cidr](#output\_osrm\_cidr) | osrm subnet CIDR-s |
| <a name="output_osrm_subnets"></a> [osrm\_subnets](#output\_osrm\_subnets) | osrm subnet CIDR-s |
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | Project name for unique referencing |
| <a name="output_region"></a> [region](#output\_region) | region |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | VPC CIDR blocks |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC id |
<!-- END_TF_DOCS -->