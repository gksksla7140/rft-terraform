variable "aws_region" { 
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-west-2"
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "rft-terraform"
}

variable "contact" {
  description = "The contact person for the project"
  type        = string
  default     = "Justin"
}

variable "public_subnet" {
  default = ["10.10.100.0/24", "10.10.101.0/24"]
  type    = list(string)
}

variable "private_subnet" {
  default = ["10.10.0.0/24", "10.10.1.0/24"]
  type    = list(string)
}

variable "availability_zones" {
  default = ["us-west-2a", "us-west-2b"]
  type    = list(string)
}
