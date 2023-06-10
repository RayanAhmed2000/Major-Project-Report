#Load Balancer Creation

resource "aws_lb" "web" {
  name               = "WebServer-HighlyAvailable-ALB"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web.id]
  subnets            = [data.aws_subnet.subnet1.id,data.aws_subnet.subnet2.id]
}
