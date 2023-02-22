output "load_balancer_dns_name" {
  value = aws_elb.my_load_balancer.dns_name
}

output "rds_endpoint" {
  value = aws_db_instance.my_db_instance.endpoint
}
