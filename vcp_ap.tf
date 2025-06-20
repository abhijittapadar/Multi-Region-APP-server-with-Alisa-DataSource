module "vpc1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.21.0"
  providers = {
    aws = aws.south
  }
  name = "public-Vpc"
  cidr = "10.0.0.0/16"
  azs = ["ap-south-1a", "ap-south-1b"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "Publick-VPC"
  }
}