# SNS Topic
resource "aws_sns_topic" "cloudwatch_alerts" {
  name = "terraform-cloudwatch-alerts"

  tags = {
    Name = "terraform-cloudwatch-alerts"
  }
}

# SNS Email Subscription
resource "aws_sns_topic_subscription" "email_alerts" {
  topic_arn = aws_sns_topic.cloudwatch_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email
}

# CloudWatch CPU Alarm
resource "aws_cloudwatch_metric_alarm" "ec2_high_cpu" {
  alarm_name        = "terraform-ec2-high-cpu"
  alarm_description = "Triggers when EC2 CPU utilization exceeds 70%"
  alarm_actions     = [aws_sns_topic.cloudwatch_alerts.arn]

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70

  dimensions = {
    InstanceId = var.instance_id
  }

  treat_missing_data = "missing"

  tags = {
    Name = "terraform-ec2-high-cpu"
  }
}