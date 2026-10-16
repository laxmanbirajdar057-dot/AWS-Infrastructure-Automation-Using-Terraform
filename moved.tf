

# CloudWatch Alarm Migration
moved {
  from = aws_cloudwatch_metric_alarm.ec2_high_cpu
  to   = module.monitoring.aws_cloudwatch_metric_alarm.ec2_high_cpu
}

# SNS Topic Migration
moved {
  from = aws_sns_topic.cloudwatch_alerts
  to   = module.monitoring.aws_sns_topic.cloudwatch_alerts
}

# SNS Email Subscription Migration
moved {
  from = aws_sns_topic_subscription.email_alerts
  to   = module.monitoring.aws_sns_topic_subscription.email_alerts
}

# Move Security Group into the security module
moved {
  from = aws_security_group.web
  to   = module.security.aws_security_group.web
}

# Move HTTP ingress rule
moved {
  from = aws_vpc_security_group_ingress_rule.http
  to   = module.security.aws_vpc_security_group_ingress_rule.http
}

# Move outbound rule
moved {
  from = aws_vpc_security_group_egress_rule.all
  to   = module.security.aws_vpc_security_group_egress_rule.all
}


# Move the existing EC2 instance into the compute module
moved {
  from = aws_instance.web
  to   = module.compute.aws_instance.web
}

# Move the Ubuntu AMI data source into the compute module
moved {
  from = data.aws_ami.ubuntu
  to   = module.compute.data.aws_ami.ubuntu
}

# VPC
moved {
  from = aws_vpc.main
  to   = module.networking.aws_vpc.main
}

# Public subnets
moved {
  from = aws_subnet.public_1
  to   = module.networking.aws_subnet.public_1
}

moved {
  from = aws_subnet.public_2
  to   = module.networking.aws_subnet.public_2
}

# Private subnets
moved {
  from = aws_subnet.private_1
  to   = module.networking.aws_subnet.private_1
}

moved {
  from = aws_subnet.private_2
  to   = module.networking.aws_subnet.private_2
}

# Internet Gateway
moved {
  from = aws_internet_gateway.main
  to   = module.networking.aws_internet_gateway.main
}

# Route tables
moved {
  from = aws_route_table.public
  to   = module.networking.aws_route_table.public
}

moved {
  from = aws_route_table.private
  to   = module.networking.aws_route_table.private
}

# Public route table associations
moved {
  from = aws_route_table_association.public_1
  to   = module.networking.aws_route_table_association.public_1
}

moved {
  from = aws_route_table_association.public_2
  to   = module.networking.aws_route_table_association.public_2
}

# Private route table associations
moved {
  from = aws_route_table_association.private_1
  to   = module.networking.aws_route_table_association.private_1
}

moved {
  from = aws_route_table_association.private_2
  to   = module.networking.aws_route_table_association.private_2
}