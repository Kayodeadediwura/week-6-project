module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  cidr                 = "192.168.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  azs             = ["eu-west-2a", "eu-west-2b", ]
  private_subnets = ["192.168.1.0/24", "192.168.3.0/24", ]
  public_subnets  = ["192.168.2.0/24", "192.168.4.0/24", ]



  tags = {
    name = "Week-6-project"

  }
}