module "sg1-public" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"
  providers = {
    aws = aws.south
  }
  name = "public-SG"
  vpc_id = module.vpc1.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules  = ["http-80-tcp"]
  egress_rules = ["all-all"]
  
}