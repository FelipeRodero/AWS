variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "var.aws_access_key" {
  description = "AWS Access Key"
}

variable "var.aws_secret_key" {
  description = "AWS Secret Key"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-1"
}

variable "var.aws.vpc.cidr" {
  description = "CIDR for the VPC"
  default     = "10.255.0.0/16"
}

variable "aws_subnet1" {
  description = "Subnet1 net"
  default     = "10.255.0.0/24"

}

variable "aws_subnet2" {
  description = "Subnet2 net"
  default     = "10.255.1.0/24"

}

#  Ubuntu, 16.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-785db401"
  }
}
