# Add output variables
output "public_subnet_ids" {
  value = aws_subnet.public_subnet[*].id # because we have count in public_subnet so we can use [*]
}

# Add output variables
output "public_subnet_cidrs" {
  value = aws_subnet.public_subnet[*].cidr_block # because we have count in public_subnet so we can use [*]
}

# Add output variables
output "private_subnet_ids" {
  value = aws_subnet.private_subnet[*].id # because we have count in public_subnet so we can use [*]
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_route_table" {
  value = aws_route_table.public_route_table
}

output "target_group" {
  value = aws_lb_target_group.TG
}

output "ALB_SG_id" {
  value = aws_security_group.lb_sg.id
}
