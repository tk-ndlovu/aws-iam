variable "azure_ad_group_accounts" {
  type        = list(string)
  description = "list of accounts a group is assigned to"
}
variable "instance_arn" {
  description = " (Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance"
  type        = string
}

variable "permission_set_arn" {
  description = " (Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to"
  type        = string
}

variable "principal_id" {
  description = "(Required, Forces new resource) An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs"
  type        = string
}

variable "principal_type" {
  description = "(Required, Forces new resource) The entity type for which the assignment will be created. Valid values: USER, GROUP"
  type        = string
  default     = "GROUP"

}

variable "target_type" {
  description = "(Optional, Forces new resource) The entity type for which the assignment will be created. Valid values: AWS_ACCOUNT"
  type        = string
  default     = "AWS_ACCOUNT"
}
