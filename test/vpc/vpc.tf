resource "aws_vpc" "aws-env-vpc" {
  cidr_block       = "10.2.0.0/16"
  instance_tenancy = "default"
 tags = {
    Name         = "aws-env-vpc"
    Network      = "Private"
    Environment  = "dev"
    OwnerID      = "yusuf.tm"
    Project      = "project_alfa"
    SensitiveData= true
    Team = "DevOps" }
}