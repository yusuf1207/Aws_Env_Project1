resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.aws-env-vpc.id
  cidr_block              = "10.2.64.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-1a"
 tags = {
    Name         = "aws-env-pub-sub1"
    Network      = "Public"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}
resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.aws-env-vpc.id
  cidr_block              = "10.2.80.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-1b"
 tags = {
    Name         = "aws-env-pub-sub2"
    Network      = "Public"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id                  = aws_vpc.aws-env-vpc.id
  cidr_block              = "10.2.0.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-1a"
 tags = {
    Name         = "aws-env-prv-sub1"
    Network      = "Private"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}
resource "aws_subnet" "private_subnet2" {
  vpc_id                  = aws_vpc.aws-env-vpc.id
  cidr_block              = "10.2.16.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-1b"
 tags = {
    Name         = "aws-env-prv-sub2"
    Network      = "Private"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}

############ Subnets Association to Route Table - Public & Private ###########
resource "aws_route_table_association" "Public_subnet1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "Public_subnet2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "Private_subnet1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "Private_subnet2" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}