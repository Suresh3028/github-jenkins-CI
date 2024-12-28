module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type = "t2.micro"
  key_name      = "user1"
  monitoring    = true
  ami           = "ami-01816d07b1128cd2d"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


