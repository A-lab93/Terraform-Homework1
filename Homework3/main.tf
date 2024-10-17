provider aws {
    region = "us-west-2"
}



data "aws_ami" "amazon-linux-2" {
  most_recent = true


  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
variable "zones" {
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "name" {
  default = ["web-1", "web-2", "web-3"]
}

