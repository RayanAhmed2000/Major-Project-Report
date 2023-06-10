data "aws_availability_zones" "working" {}
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
data "aws_ami" "latest_amazon_linux" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

################################################################################################################

# Instance Creation

# resource "aws_instance" "my_ubuntu" {
#   ami                    = "ami-03c7d01cf4dedc891"
#   instance_type          = "t2.micro"
#   key_name               = "test-key"
#   vpc_security_group_ids = [aws_security_group.web.id]
#   user_data              = file("user_data.sh")

#   tags = {
#     Name    = "test server-2"
#     Owner   = "Mobi"
#     project = "Phoenix"
#   }
# }




# resource "aws_subnet" "subnet1" {
#   vpc_id            = data.aws_vpc.test.id
#   availability_zone = data.aws_availability_zones.working.names[0]
#   cidr_block        = "10.0.0.192/26"

#   tags = {
#     Name = "NewSubnet"
#     Info = "AZ: ${data.aws_availability_zones.working.names[0]} in Region: ${data.aws_region.current.description}"
#   }
# }

################################################################################################################

#ASG Creation

# data "aws_subnet" "subnet1" {
#   filter {
#     name = "tag:Name"
#     values = ["NewSubnet"]
#   }
# }



################################################################################################################



#-------------------------------------------------------------------------------

