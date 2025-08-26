#################naming and tagging##############################
variable "custom_tags" {
  description = "Map(optional, {}): Optional tags"
  type        = map(any)
  default     = {}
}

variable "team_email" {
  type        = string
  description = "The team email to contact for information etc."
}

variable "environment" {
  type        = string
  description = "The environment being deployed to [dev/uat/prod]"
}

variable "app_name" {
  type        = string
  description = "The application name to be used in the tags"
}

variable "owner" {
  type        = string
  description = "The resource owner"
}

#########################################AWS account ##############################
variable "region" {
  description = "Region has been deployed"
  type        = string
  default = "af-south-1"
}

variable "account_id" {
  description = "The account ID you intend to deploy resources to"
  type = string
}

######################### api gateway#####################################