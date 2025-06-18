module "ec2-instance1" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.8.0"
  providers = {
    aws = aws.south
  }
  name = "My-Web-App"
  ami = data.aws_ami.amzlinux2_apsouth.id
  associate_public_ip_address = true
  instance_type = "t2.micro"
  user_data = file("${path.module}/app.sh")
  vpc_security_group_ids = [module.sg1-public.security_group_id]
  for_each = toset(["0", "1"])
  subnet_id = element(module.vpc1.public_subnets, tonumber(each.key))
  availability_zone = element(var.azs1, each.value)  
}