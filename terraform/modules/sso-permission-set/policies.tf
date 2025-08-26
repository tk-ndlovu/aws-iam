locals {
  policy_files = {
    compute_services_permission_policy            = "compute-services.json"
    database_services_permission_policy           = "database-services.json"
    devtool_services_permission_policy            = "devtool-services.json"
    devtools_permissions_boundary_policy          = "devtools_permissions_boundary.json"
    dns_services_permission_policy                = "dns-services.json"
    es_domain_s3_snapshot_permission_policy       = "es-domain-s3-snapshot.json"
    general_permissions_boundary_policy           = "general_permissions_boundary.json"
    iam_services_permission_policy                = "iam-services.json"
    lambda_boundary_permission_policy             = "lambda_boundary_policy.json"
    lambda_ddb_streams_boundary_permission_policy = "lambda_ddb_streams_boundary_policy.json"
    machine_learning_services_permission_policy   = "machine-learning-services.json"
    managed_services_permission_policy            = "managed-services.json"
    ml_permissions_boundary_policy                = "ml_permissions_boundary.json"
    quicksight_contributor_permission_policy      = "quicksight-contributor.json"
    quicksight_read_only_permission_policy        = "quicksight-read-only.json"
    serverless_services_permission_policy         = "serverless-services.json"
    storage_services_permission_policy            = "storage-services.json"
    user_permissions_boundary_policy              = "user_permissions_boundary.json"
  }
}

resource "aws_iam_policy" "policy" {
  for_each = local.policy_files

  name = "${var.short_name}-${replace(each.key, "_", "-")}"
  policy = templatefile("${path.module}/policies/${each.value}", merge({
    TeamCode = var.short_name,
    TeamName = var.team_name,
  }, var.policy_variables))
}

resource "aws_ssoadmin_customer_managed_policy_attachment" "admin" {
  for_each = aws_iam_policy.policy

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this["SSOAdministratorAccess"].arn

  customer_managed_policy_reference {
    name = each.value.name
    path = each.value.path
  }
}

resource "aws_ssoadmin_customer_managed_policy_attachment" "poweruser" {
  for_each = { for name, pol in aws_iam_policy.policy : name => pol if contains(var.poweruser_policy_names, name) }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this["SSOPowerUserAccess"].arn

  customer_managed_policy_reference {
    name = each.value.name
    path = each.value.path
  }
}
