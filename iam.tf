
resource "aws_iam_instance_profile" "ec2_ssm" {
  name = "terraform-ec2-ssm-profile"
  role = "Terraform-EC2-SSM-Role"

  tags = {
    Name = "terraform-ec2-ssm-profile"
  }
}
