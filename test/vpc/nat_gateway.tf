resource "aws_nat_gateway" "NATGateway" {
  allocation_id = aws_eip.EIPNatGateway.id
  subnet_id     = aws_subnet.public_subnet1.id
}

resource "aws_eip" "EIPNatGateway" {
  vpc = true
}