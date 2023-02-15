variable "env" {
  type        = string
  description = "This represents environment"
  default     = "env"
}
variable "pulicly_accessible" {
  type        = bool
  description = "Allow Public Access"
  default     = false
}