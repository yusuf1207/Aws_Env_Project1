resource "aws_instance" "example" {
  ami_id                      = "ami-0d50e5e845c552faf"
  instance_type               = "t2.micro"
  key_name                    = "mackey"
  subnet_id                   = "subnet-0ab2fb103e79db61b"
  aws_security_group_id       = ["sg-039f5dcd7d53d3ee5"]
  associate_public_ip_address = true
  tags = {
    Name = "test1"
  }
}