module "sso_permission_sets" {
  source = "./modules/sso-permission-set"

  for_each = {
    for team_key, team in local.teams : "${team.short_name}" => team
  }

  team_name       = each.value.team_name
  short_name      = each.value.short_name
  team_email      = each.value.team_email
  aws_accounts    = each.value.aws_accounts
  permission_sets = local.team_permissions
  sso_instance_arn = tolist(data.aws_ssoadmin_instances.azure_ad.arns)[0]
  tags = merge(
    local.tags,
    var.custom_tags,
)
}

##Apply the permissions sets to Accounts using a module

module "assignment" {
  source = "./modules/assignment"
  
  for_each = local.azure_ad_groups

    instance_arn = aws_ssoadmin_permission_set.this[each.value.permission_set].instance_arn
    permission_set_arn = aws_ssoadmin_permission_set.this[each.value.permission_set].arn
    principal_id       = data.aws_identitystore_group.azure_ad_group[each.key].group_id
    azure_ad_group_accounts = each.value.aws_accounts

}


