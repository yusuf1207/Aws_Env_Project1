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