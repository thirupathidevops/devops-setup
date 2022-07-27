provider "aws" {
        region = "us-east-1"
}

resource "aws_instance" "foo" {
        ami = "ami-0022f774911c1d690"
        instance_type = "t2.nano"
        key_name = "jfrog"
        user_data = "${file("nodejs.sh")}"
        tags = {
                Name = "Terraform"
                Batch = "5AM"
        }
}
