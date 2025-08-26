module "sso_permission_sets" {
  source = "./modules/sso-permission-set"

  for_each = { for team_key, team in local.teams : team_key => team }

  team_name                        = each.value.team_name
  short_name                       = each.value.team_code
  team_email                       = each.value.team_email
  aws_accounts                     = each.value.aws_accounts
  permission_sets                  = local.managed_permissions
  additional_poweruser_policy_arns = lookup(each.value, "poweruser_policy_arns", [])
  poweruser_policy_names           = lookup(each.value, "poweruser_policy_names", [])
  policy_variables                 = lookup(each.value, "policy_variables", {})
  sso_instance_arn                 = tolist(data.aws_ssoadmin_instances.azure_ad.arns)[0]
  tags = merge(
    local.tags,
    var.custom_tags,
  )
}

##Apply the permissions sets to Accounts using a module

module "assignment" {
  source = "./modules/assignment"

  for_each = local.azure_ad_groups

  instance_arn            = module.sso_permission_sets[split("_", each.value.ad_group_name)[1]].instance_arn
  permission_set_arn      = module.sso_permission_sets[split("_", each.value.ad_group_name)[1]].permission_set_arns[each.value.permission_set]
  principal_id            = data.aws_identitystore_group.azure_ad_group[each.key].group_id
  azure_ad_group_accounts = each.value.aws_accounts
}


