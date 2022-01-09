output "arn" {
  description = "The Amazon Resource Name of the deployed instance"
  value       = aws_instance.ec2.arn
}

output "availability_zone" {
  description = "Availability Zone the deployed instance now resides"
  value       = aws_instance.ec2.availability_zone
}

output "credit_specification" {
  description = "The credit specification of the instances CPU usage (`standard` or `unlimited`)"
  value       = aws_instance.ec2.credit_specification
}

output "ebs_block_device_volume_ids" {
  description = "List of EBS block storage volume IDs attached to the deployed instance"
  value       = [for device in aws_instance.ec2.ebs_block_device : device.*.volume_id]
}

output "id" {
  description = "Deployed Instance ID"
  value       = aws_instance.ec2.id
}

output "instance_state" {
  description = "Current instance state"
  value       = aws_instance.ec2.instance_state
}

output "ipv6_addresses" {
  description = "The assigned IPv6 address assigned to the deployed instance"
  value       = aws_instance.ec2.ipv6_addresses
}

output "key_name" {
  description = "Key assigned to the deployed instance"
  value       = aws_instance.ec2.key_name
}

output "metadata_options" {
  description = "Any metadata options applied to the deployed instance"
  value       = aws_instance.ec2.metadata_options
}

output "password_data" {
  description = "Base-64 encoded encrypted password data"
  value       = aws_instance.ec2.password_data
}

output "placement_group" {
  description = "Placement group assigned"
  value       = aws_instance.ec2.placement_group
}

output "primary_network_interface_id" {
  description = "ID of the primary network interface"
  value       = aws_instance.ec2.primary_network_interface_id
}

output "private_dns" {
  description = "List of private DNS names assigned. (Only be used inside the Amazon EC2 + DNS hostnames for your VPC is enabled.)"
  value       = aws_instance.ec2.private_dns
}

output "private_ip" {
  description = "The Private IP address assigned to instance"
  value       = aws_instance.ec2.private_ip
}

output "public_dns" {
  description = "Public DNS names assigned (Only available if you've enabled DNS hostnames for your VPC)"
  value       = aws_instance.ec2.public_dns
}

output "public_ip" {
  description = "The Public IP addresses assigned (If applicable)"
  value       = aws_instance.ec2.public_ip
}

output "root_block_device_volume_ids" {
  description = "The root block storage volume IDs attached to the deployed instance"
  value       = [for device in aws_instance.ec2.root_block_device : device.*.volume_id]
}

output "security_groups" {
  description = "List of Security Groups attached to the deployed instance"
  value       = aws_instance.ec2.security_groups
}

output "subnet_id" {
  description = "The ID of the subnets the deployed instance resides"
  value       = aws_instance.ec2.subnet_id
}

output "tags" {
  description = "Map of tags applied to the deployed instance"
  value       = aws_instance.ec2.tags
}

output "volume_tags" {
  description = "Map of tags applied to the deployed EBS storage volumes"
  value       = aws_instance.ec2.volume_tags
}

output "vpc_security_group_ids" {
  description = "List of security group IDs applied from the parent VPC (If running in a non-default VPC)"
  value       = aws_instance.ec2.vpc_security_group_ids
}