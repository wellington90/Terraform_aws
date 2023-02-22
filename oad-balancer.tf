resource "aws_elb" "my_load_balancer" {
  name               = "my_load_balancer"
  security_groups    = [
    aws_security_group.my_security_group.id
  ]
  subnets            = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id
  ]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:80/"
  }
}
