variable "instance_id" {
  description = "EC2 instance ID to monitor"
  type        = string
}

variable "alert_email" {
  description = "Email address for CloudWatch alerts"
  type        = string
}