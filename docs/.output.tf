output "ec2_arn" {
  description = "The Amazon Resource Name of the deployed instance"
  value       = module.ec2.arn
}

output "ec2_availability_zone" {
  description = "Availability Zone the deployed instance now resides"
  value       = module.ec2.availability_zone
}

output "ec2_credit_specification" {
  description = "The credit specification of the instances CPU usage (`standard` or `unlimited`)"
  value       = module.ec2.credit_specification
}

output "ec2_ebs_block_device_volume_ids" {
  description = "List of EBS block storage volume IDs attached to the deployed instance"
  value       = module.ec2.ebs_block_device_volume_ids
}

output "ec2_id" {
  description = "Deployed Instance ID"
  value       = module.ec2.id
}

output "ec2_instance_state" {
  description = "Current instance state"
  value       = module.ec2.instance_state
}

output "ec2_ipv6_addresses" {
  description = "The assigned IPv6 address assigned to the deployed instance"
  value       = module.ec2.ipv6_addresses
}

output "ec2_key_name" {
  description = "Key assigned to the deployed instance"
  value       = module.ec2.key_name
}

output "ec2_metadata_options" {
  description = "Any metadata options applied to the deployed instance"
  value       = module.ec2.metadata_options
}

output "ec2_password_data" {
  description = "Base-64 encoded encrypted password data"
  value       = module.ec2.password_data
}

output "ec2_placement_group" {
  description = "Placement group assigned"
  value       = module.ec2.placement_group
}

output "ec2_primary_network_interface_id" {
  description = "ID of the primary network interface"
  value       = module.ec2.primary_network_interface_id
}

output "ec2_private_dns" {
  description = "List of private DNS names assigned. (Only be used inside the Amazon EC2 + DNS hostnames for your VPC is enabled.)"
  value       = module.ec2.private_dns
}

output "ec2_private_ip" {
  description = "The Private IP address assigned to instance"
  value       = module.ec2.private_ip
}

output "ec2_public_dns" {
  description = "Public DNS names assigned (Only available if you've enabled DNS hostnames for your VPC)"
  value       = module.ec2.public_dns
}

output "ec2_public_ip" {
  description = "The Public IP addresses assigned (If applicable)"
  value       = module.ec2.public_ip
}

output "ec2_root_block_device_volume_ids" {
  description = "The root block storage volume IDs attached to the deployed instance"
  value       = module.ec2.root_block_device_volume_ids
}

output "ec2_security_groups" {
  description = "List of Security Groups attached to the deployed instance"
  value       = module.ec2.security_groups
}

output "ec2_subnet_id" {
  description = "The ID of the subnets the deployed instance resides"
  value       = module.ec2.subnet_id
}

output "ec2_tags" {
  description = "Map of tags applied to the deployed instance"
  value       = module.ec2.tags
}

output "ec2_volume_tags" {
  description = "Map of tags applied to the deployed EBS storage volumes"
  value       = module.ec2.volume_tags
}

output "ec2_vpc_security_group_ids" {
  description = "List of security group IDs applied from the parent VPC (If running in a non-default VPC)"
  value       = module.ec2.vpc_security_group_ids
}

