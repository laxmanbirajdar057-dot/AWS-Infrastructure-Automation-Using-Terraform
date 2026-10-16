variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "ap-south-1"
}


#additional variable for alert email
variable "alert_email" {
  description = "Email address for CloudWatch alarm notifications"
  type        = string
}