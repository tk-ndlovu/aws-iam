resource "aws_ssoadmin_account_assignment" "assignment" {
  count              = length(var.azure_ad_group_accounts)
  instance_arn       = var.instance_arn
  permission_set_arn = var.permission_set_arn
  principal_id       = var.principal_id
  principal_type     = var.principal_type
  target_id          = var.azure_ad_group_accounts[count.index]
  target_type        = var.target_type
}
