variable "tags" {
  type        = map(string)
  description = "Tags to apply to the permission sets."
}
variable "short_name" {
  type        = string
  description = "Short identifier for the team, used in naming the permission sets (e.g., 'mpdev')."
}

variable "team_name" {
  type        = string
  description = "Full name of the team (e.g., 'mature_product_development')."
}

variable "team_email" {
  type        = string
  description = "Email address of the team for contact or tagging purposes."
}

variable "aws_accounts" {
  type        = list(string)
  description = "List of AWS account IDs where the permission sets should be assigned."
}

variable "permission_sets" {
  type = map(object({
    description        = string
    session_duration   = string
    managed_policy_arn = string
  }))
  description = "Map of permission sets with optional AWS managed policy ARN or null for custom ones"
}

variable "additional_poweruser_policy_arns" {
  type        = list(string)
  description = "List of additional AWS managed policy ARNs to attach to the power user permission set."
  default     = []
}


variable "sso_instance_arn" {
  type        = string
  description = "The ARN of the AWS SSO (IAM Identity Center) instance used to create the permission sets."
}
