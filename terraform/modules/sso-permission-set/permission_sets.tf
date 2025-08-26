resource "aws_ssoadmin_permission_set" "this" {
  for_each = var.permission_sets

  name             = "SSO-${var.short_name}-${replace(each.key, "SSO", "")}"
  description      = each.value.description
  session_duration = each.value.session_duration
  instance_arn     = var.sso_instance_arn

  tags = merge(
    var.tags,
    tomap({ "Name" = "SSO-${var.short_name}-${replace(each.key, "SSO", "")}" })
  )
}

resource "aws_ssoadmin_managed_policy_attachment" "policy_attachment" {
  for_each = { for k, v in var.permission_sets : k => v if v.managed_policy_arn != null }

  instance_arn       = var.sso_instance_arn
  managed_policy_arn = each.value.managed_policy_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn
}

resource "aws_ssoadmin_managed_policy_attachment" "poweruser_additional" {
  for_each = toset(var.additional_poweruser_policy_arns)

  instance_arn       = var.sso_instance_arn
  managed_policy_arn = each.value
  permission_set_arn = aws_ssoadmin_permission_set.this["SSOPowerUserAccess"].arn
}
