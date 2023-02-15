resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.aws-env-vpc.id
 tags = {
    Name         = "aws-env-pub-route-table"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.aws-env-vpc.id
 tags = {
    Name         = "aws-env-private-route-table"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}

resource "aws_route" "internet_gateway_route" {
    route_table_id         = aws_route_table.public_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.aws_env_internet_gateway.id
}

resource "aws_route" "NAT_gateway_route" {
    depends_on             = [aws_route.internet_gateway_route]
    route_table_id         = aws_route_table.private_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.aws_env_internet_gateway.id
}
