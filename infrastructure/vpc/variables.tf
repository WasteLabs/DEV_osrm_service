variable "tags" {
  default     = {
    project_name = "DEV_OSRM_SERVICE"
    region = "us-east-1"
  }
  description = "Tags set to VPC"
  type        = map(string)
}