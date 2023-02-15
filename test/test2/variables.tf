variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t2.micro"
}
variable "key_name" {
  type        = string
  description = "this is my public key"
  default     = "mackey"
}
variable "env" {
  type        = string
  description = "this variable represents environment"
  default     = "dev"
}
variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for Ingress Rule"
  default     = ["22", "80", "443", "3306", "23", "5432"]
}