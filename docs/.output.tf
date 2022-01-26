output "ec2_going_bigger_than_ever_arn" {
  description = "The Amazon Resource Name of the deployed instance"
  value       = module.ec2_going_bigger_than_ever.arn
}

output "ec2_going_bigger_than_ever_availability_zone" {
  description = "Availability Zone the deployed instance now resides"
  value       = module.ec2_going_bigger_than_ever.availability_zone
}

output "ec2_going_bigger_than_ever_credit_specification" {
  description = "The credit specification of the instances CPU usage (`standard` or `unlimited`)"
  value       = module.ec2_going_bigger_than_ever.credit_specification
}

output "ec2_going_bigger_than_ever_ebs_block_device_volume_ids" {
  description = "List of EBS block storage volume IDs attached to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.ebs_block_device_volume_ids
}

output "ec2_going_bigger_than_ever_id" {
  description = "Deployed Instance ID"
  value       = module.ec2_going_bigger_than_ever.id
}

output "ec2_going_bigger_than_ever_instance_state" {
  description = "Current instance state"
  value       = module.ec2_going_bigger_than_ever.instance_state
}

output "ec2_going_bigger_than_ever_ipv6_addresses" {
  description = "The assigned IPv6 address assigned to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.ipv6_addresses
}

output "ec2_going_bigger_than_ever_key_name" {
  description = "Key assigned to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.key_name
}

output "ec2_going_bigger_than_ever_metadata_options" {
  description = "Any metadata options applied to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.metadata_options
}

output "ec2_going_bigger_than_ever_password_data" {
  description = "Base-64 encoded encrypted password data"
  value       = module.ec2_going_bigger_than_ever.password_data
}

output "ec2_going_bigger_than_ever_placement_group" {
  description = "Placement group assigned"
  value       = module.ec2_going_bigger_than_ever.placement_group
}

output "ec2_going_bigger_than_ever_primary_network_interface_id" {
  description = "ID of the primary network interface"
  value       = module.ec2_going_bigger_than_ever.primary_network_interface_id
}

output "ec2_going_bigger_than_ever_private_dns" {
  description = "List of private DNS names assigned. (Only be used inside the Amazon EC2 + DNS hostnames for your VPC is enabled.)"
  value       = module.ec2_going_bigger_than_ever.private_dns
}

output "ec2_going_bigger_than_ever_private_ip" {
  description = "The Private IP address assigned to instance"
  value       = module.ec2_going_bigger_than_ever.private_ip
}

output "ec2_going_bigger_than_ever_public_dns" {
  description = "Public DNS names assigned (Only available if you've enabled DNS hostnames for your VPC)"
  value       = module.ec2_going_bigger_than_ever.public_dns
}

output "ec2_going_bigger_than_ever_public_ip" {
  description = "The Public IP addresses assigned (If applicable)"
  value       = module.ec2_going_bigger_than_ever.public_ip
}

output "ec2_going_bigger_than_ever_root_block_device_volume_ids" {
  description = "The root block storage volume IDs attached to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.root_block_device_volume_ids
}

output "ec2_going_bigger_than_ever_security_groups" {
  description = "List of Security Groups attached to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.security_groups
}

output "ec2_going_bigger_than_ever_subnet_id" {
  description = "The ID of the subnets the deployed instance resides"
  value       = module.ec2_going_bigger_than_ever.subnet_id
}

output "ec2_going_bigger_than_ever_tags" {
  description = "Map of tags applied to the deployed instance"
  value       = module.ec2_going_bigger_than_ever.tags
}

output "ec2_going_bigger_than_ever_volume_tags" {
  description = "Map of tags applied to the deployed EBS storage volumes"
  value       = module.ec2_going_bigger_than_ever.volume_tags
}

output "ec2_going_bigger_than_ever_vpc_security_group_ids" {
  description = "List of security group IDs applied from the parent VPC (If running in a non-default VPC)"
  value       = module.ec2_going_bigger_than_ever.vpc_security_group_ids
}

