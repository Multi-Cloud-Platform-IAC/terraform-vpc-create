variable "vpc_enabled" {
  type        = bool
  default     = false
  description = "A Falg to Control Creation of VPC . Default false"
}
variable "cidr_block" {
  type        = string
  default     = ""
  description = "The CIDR block for the VPC."
}

variable "instance_tenancy" {
  type        = string
  default     = ""
  description = "A tenancy option for instances launched into the VPC."
}

variable "enable_dns_support" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable DNS hostnames in the VPC.Defaults false."
}
variable "enable_classiclink" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable ClassicLink for the VPC.Defaults false"
}

variable "enable_classiclink_dns_support" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC, Only valid in regions and accounts that support EC2 Classic."
}



#### Enable VPC_Flow Logs enable_vpc_flow_logs
variable "enable_vpc_flow_logs" {
  type        = bool
  default     = false
  description = "A Flag Value to enable to enable_vpc_flow_logs, By Defaults,false"
}

variable "traffic_type" {
  type        = string
  default     = "ALL"
  description = "The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL., By Default ALL"
}

variable "log_destination_type" {
  type        = string
  default     = "cloud-watch-logs"
  description = "The type of the logging destination. Valid values: cloud-watch-logs, S3 by Default cloud-watch-logs"
}
variable "iam_role_arn"{
  type        = string
  default     = ""
  description = "The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group"
}

