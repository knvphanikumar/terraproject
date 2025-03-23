provider "aws" {
region = "us-east-1"
access_key = "AKIA2ZIOMZUJQFAQUG5Y"
secret_key = "WMzp3woSuh1Q8nbezl4rZL4jMpq5BrCcM4zNkZSf"
}

resource "aws_instance" "ec2_example" {
  ami                    = "ami-084568db4383264d4"
  instance_type          = "t2.micro"
  key_name = "phanitf"
   availability_zone = "us-east-1b"
  tags = {
    Name = "PHANI-tf"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1b"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}


