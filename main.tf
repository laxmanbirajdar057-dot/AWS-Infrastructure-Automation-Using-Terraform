module "networking" {
  source = "./modules/networking"
}

module "security" {
  source = "./modules/security"

  vpc_id = module.networking.vpc_id
}

module "compute" {
  source = "./modules/compute"

  subnet_id            = module.networking.public_subnet_1_id
  security_group_id    = module.security.security_group_id
  iam_instance_profile = aws_iam_instance_profile.ec2_ssm.name
  user_data_path       = "${path.root}/userdata.sh"
}

module "monitoring" {
  source = "./modules/monitoring"

  instance_id = module.compute.instance_id
  alert_email = var.alert_email
}