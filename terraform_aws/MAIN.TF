#outside providers
terraform {
    required_providers{
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
    ami = "ami-046058b350f7d734f"
    instance_type="t2.micro"
    tags={
        Name = "ec2-created-by-terraform"
    }
}

#output 
output "ec2_public_ip" {
    value = aws_instance.my_ec2_instance.public_ip
}

#output 
output "ec2_public_dns" {
    value = aws_instance.my_ec2_instance.public_dns
}

#multiple ec2 creation
resource "aws_instance" "my_ec2_multiple_instance" {
    count = 5
    ami = "ami-046058b350f7d734f"
    instance_type="t2.micro"
    tags={
        Name = "multiple_ec2-created-by-terraform"
    }
}

#output of multiple ip 
output "ec2_multiple_public_ip" {
    value = aws_instance.my_ec2_multiple_instance[*].public_ip
}
