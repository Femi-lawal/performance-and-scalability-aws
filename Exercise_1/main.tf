# Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1",
  profile = "default",
  version = "v2.70.0"
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "Udacity-t2" {
  count = "4"
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
  subnet_id = "subnet-04165e8bc5dda8112"
}

# provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-m4" {
  count = "2"
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "m4.large"
  tags = {
    Name = "Udacity M2"
  }
  subnet_id = "subnet-04165e8bc5dda8112"
}