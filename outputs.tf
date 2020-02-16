### VPC OutPut Info

output "vpc_id" {
  value       = join("", aws_vpc.aws_vpc_suffix.*.id)
  description = "The ID of the VPC."
}

output "vpc_cidr_block" {
  value       = join("", aws_vpc.aws_vpc_suffix.*.cidr_block)
  description = "The CIDR block of the VPC."
}

output "main_route_table_id" {
  value       = join("", aws_vpc.aws_vpc_suffix.*.main_route_table_id)
  description = "The ID of the main route table associated with this VPC."
}

output "default_network_acl_id" {
  value       = join("", aws_vpc.aws_vpc_suffix.*.default_network_acl_id)
  description = "The ID of the network ACL created by default on VPC creation."
}

output "default_security_group_id" {
  value       = join("", aws_vpc.aws_vpc_suffix.*.default_security_group_id)
  description = "The ID of the security group created by default on VPC creation."
}

output "default_route_table_id" {
  value       = join("", aws_vpc.aws_vpc_suffix.*.default_route_table_id)
  description = "The ID of the route table created by default on VPC creation."
}


### VPC Flow Logs OutPut

output "vpc_Flow_ID" {
  value       = join("", aws_flow_log.aws_flow_log_suffix.*.id)
  description = "The Flow Log ID."
}