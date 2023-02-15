resource "aws_security_group" "main" {
  name        = "main_sg"
  description = "This is a test security group"
  vpc_id      = "vpc-033585edc6f00d9fc"
}

resource "aws_security_group_rule" "ingress_ssh" {
  count             = length(var.ingress_ports)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index) # count.index = 0, 1, 2
  to_port           = element(var.ingress_ports, count.index) # count.index = 0, 1, 2
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}
