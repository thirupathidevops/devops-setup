provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUM2NLS2VHL3CYAX5"
    secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"

  tags = {
    Name = "sample"
  }
}