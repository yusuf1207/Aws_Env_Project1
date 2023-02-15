resource "aws_instance" "main" {
  count                  = 1
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = var.key_name
  tags = {
    Name  = "${var.env}-instance" # dev-instance, qa-instance, prod-instance
    Name2 = format("%s-instance", var.env)
  }
}

# Reference Named Values:
# 1. Resource = aws_security_gorup.main.id
# 2. Input Variable = var.instance_type
# 3. Data Source = data.aws_ami.amazon_linux_2.attribute

# 4. Local = 
# 5. Child Module = 
