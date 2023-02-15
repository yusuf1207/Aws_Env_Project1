variable "ami" {
    type = string
    description = "This is AMI for my ec2 instance"
}
variable "instance_type" {
    type = string
    description = "The size of EC2"
}
variable "env" {
    type = string
    description = "This is an environment"
}