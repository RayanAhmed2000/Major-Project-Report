data "aws_vpc" "default" {
  filter {
    name = "tag:Name"
    values = ["Default-VPC"]
  }
}

data "aws_subnet" "subnet1" {
  filter {
    name = "tag:Name"
    values = ["subnet1"]
  }
}
data "aws_subnet" "subnet2" {
  filter {
    name = "tag:Name"
    values = ["subnet2"]
  }
}

#VPC Section


data "aws_vpcs" "vpcs" {}

data "aws_vpc" "test" {
  tags = {
    Name = "Default-VPC"
  }
}