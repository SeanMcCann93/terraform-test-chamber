resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_sg
  associate_public_ip_address = var.public_ip
  disable_api_termination     = var.protect
  ebs_optimized               = var.ebs_optimized
  user_data                   = var.user_data

  root_block_device {
    volume_type = "gp2"
    volume_size = var.storage_size
    encrypted   = var.encrypt_storage
  }

  volume_tags = merge(
    { Name = var.name },
    var.storage_tags
  )
  tags = merge(
    { Name = var.name },
    var.tags
  )
}