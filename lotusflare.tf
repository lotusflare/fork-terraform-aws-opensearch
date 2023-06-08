variable "custom_endpoint_enabled" {
  description = "Enable customer endpoint related configuration"
  type        = bool
  default     = true
}

variable "route53_zone_id" {
  description = "route53 zone id"
  type        = string
}

variable "route53_zone_name" {
  type = string
}

locals {
  custom_endpoint_certificate_arn = !var.custom_endpoint_enabled ? null : ((var.custom_endpoint_certificate_arn != "") ? var.custom_endpoint_certificate_arn : module.acm[0].acm_certificate_arn)
}
