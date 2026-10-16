variable "subnet_id" {
  description = "Subnet where the EC2 instance will run"
  type        = string
}

variable "security_group_id" {
  description = "Security group attached to the EC2 instance"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile name for EC2"
  type        = string
}

variable "user_data_path" {
  description = "Absolute path to the EC2 bootstrap script"
  type        = string
}