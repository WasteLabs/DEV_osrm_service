output pbf_files_to_public_ip {
  value       = zipmap(var.pbf_files_to_instance_type[*][0], aws_instance.osrm_instance[*].public_ip)
  description = "Mappings: pbf file <-> OSRM instance public ip"
}
