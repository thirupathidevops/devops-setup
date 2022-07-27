provider "aws" {
 region = "ap-south-1"
}
resource "aws_instance" "instance" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
count = var.instance_count
tags = {
  Name = "terraform ec2"
   }
}
variable "instance_count"{
description = "instance count"
type = number
default = 2
}
