resource "aws_instance" "example" {
  ami_id                      = "ami-0d50e5e845c552faf"
  instance_type               = "t2.micro"
  key_name                    = "mackey"
  subnet_id                   = "subnet-0ab2fb103e79db61b"
  aws_security_group_id       = ["sg-0e14f59a31df8d27a"]
  iam_instance_profile        = aws_iam_instance_profile.instance_profile.name
  associate_public_ip_address = true
  tags = {
    Name = "test1"
  }
}