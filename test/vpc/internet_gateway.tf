resource "aws_internet_gateway" "aws_env_internet_gateway" {
  vpc_id = aws_vpc.aws-env-vpc.id
 tags = {
    Name         = "aws-env-internet_gateway"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}

# resource "aws_internet_gateway_attachment" "aws_env_internet_gateway_attachment" {
#   internet_gateway_id = aws_internet_gateway.aws_env_internet_gateway.id
#   vpc_id              = aws_vpc.aws-env-vpc.id
# }