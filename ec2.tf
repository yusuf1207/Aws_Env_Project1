resource "aws_instance" "test1" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  tags = {
    Name = "${var.env}-instance"                                # dev-instance, qa-instance, prod-instance
    Name2 = format("%s-instance", var.env)
  }
}