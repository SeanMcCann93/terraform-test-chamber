/**
 * ec2
 */

variable "ami" {
  description = "Amazon Machine Image ID `ami-*`"
  type        = string
  sensitive   = false

  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "The 'ami' value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "ebs_optimized" {
  description = "Optimize the EBS block storage `true`"
  type        = bool
  default     = false
  sensitive   = false
}

variable "encrypt_storage" {
  description = "Encrypted storage `false`"
  type        = bool
  default     = true
  sensitive   = false
}

variable "instance_type" {
  description = "Define the instance specification `t2.micro`"
  type        = string
  default     = "t2.micro"
  sensitive   = false
}

variable "key_name" {
  description = "Pem Key attached to Instance `keyName.pem`"
  type        = string
  sensitive   = true
}

variable "name" {
  description = "Machine and storage name `tc-`"
  type        = string
  sensitive   = false

  validation {
    condition     = length(var.name) > 3 && substr(var.name, 0, 3) == "tc-"
    error_message = "The 'name' value must be valid and start with \"tc-\"."
  }
}

variable "protect" {
  description = "If enabled, it will prevent the system from being terminated `true`"
  type        = bool
  default     = false
  sensitive   = false
}

variable "public_ip" {
  description = "Assign a public IP address to the EC2 Instance `true`"
  type        = bool
  default     = false
  sensitive   = false
}

variable "storage_size" {
  description = "Storage to be given in **GB** `10` (must be a whole number)"
  type        = number
  default     = 5
  sensitive   = false

  validation {
    condition     = floor(var.storage_size) == var.storage_size
    error_message = "The 'storage_size' value must be a full number."
  }
}

variable "storage_tags" {
  description = "Map of tags to assign to the attached EBS `key = value`"
  type        = map(any)
  default     = null
  sensitive   = false
}

variable "subnet_id" {
  description = "Subnet the EC2 is to reside within `subnet-`"
  type        = string
  sensitive   = false

  validation {
    condition     = length(var.subnet_id) > 7 && substr(var.subnet_id, 0, 7) == "subnet-"
    error_message = "The 'subnet_id' value must be valid and start with \"subnet-\"."
  }
}

variable "tags" {
  description = "Map of tags to assign to the EC2 instance `key = value`"
  type        = map(any)
  default     = null
  sensitive   = false
}

variable "user_data" {
  description = "Commands to run at the start of the instance"
  default     = null
  sensitive   = true
}

variable "vpc_sg" {
  description = "Allocated Security Groups `sg-`"
  type        = list(string)
  sensitive   = false

  validation {
    condition     = length(var.vpc_sg[0]) > 3 && substr(var.vpc_sg[0], 0, 3) == "sg-"
    error_message = "Security group must start with \"sg-\"."
  }
}