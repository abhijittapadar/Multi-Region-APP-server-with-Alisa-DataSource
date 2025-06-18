module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.8.0"
  
  name = "My-Web-App"
  ami = data.aws_ami.amzlinux2.id
  associate_public_ip_address = true
  instance_type = "t2.micro"
  user_data = file("${path.module}/app.sh")
  vpc_security_group_ids = [module.sg-public.security_group_id]
  for_each = toset(["0", "1"])
  subnet_id = element(module.vpc.public_subnets, tonumber(each.key))
  availability_zone = element(var.azs, each.value)  
}