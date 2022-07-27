provider "aws"{
  region = "ap-south-1"
access_key = "AKIAUM2NLS2VHL3CYAX5"
secret_key = "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"
}
resource "aws_instance" "foo" {
  ami           = "ami-08c6724c280604575"
  instance_type = "t2.micro"
tags = {
  Name = "new"
}
}
