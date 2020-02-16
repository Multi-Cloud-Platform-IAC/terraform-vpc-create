
### Creation of VPPC
resource "aws_vpc" "aws_vpc_suffix" {
  count = var.vpc_enabled == true ? 1 : 0

  cidr_block = var.cidr_block
  instance_tenancy = var.instance_tenancy
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_classiclink = var.enable_classiclink
  enable_classiclink_dns_support = var.enable_classiclink_dns_support
  # tags = "Optional"
}

## Enable VPC Flow Logs and Store Under Cloud Watch
resource "aws_flow_log" "aws_flow_log_suffix" {
  count = var.enable_vpc_flow_logs == true ? 1: 0
  traffic_type = var.traffic_type
  log_destination_type  =  var.log_destination_type
  iam_role_arn = var.iam_role_arn
  vpc_id = element(aws_vpc.aws_vpc_suffix.*.id, count.index)
}

