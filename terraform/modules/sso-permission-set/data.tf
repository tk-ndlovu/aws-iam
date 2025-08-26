data "aws_caller_identity" "current" {}

data "template_file" "compute_services_policy" {
  template = file("${path.module}/policies/compute-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "database-services_policy" {
  template = file("${path.module}/policies/database-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "devtool-services_policy" {
  template = file("${path.module}/policies/devtool-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "devtools_permissions_boundary_policy" {
  template = file("${path.module}/policies/devtools_permissions_boundary.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "dns-services_policy" {
  template = file("${path.module}/policies/dns-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "es-domain-s3-snapshot_policy" {
  template = file("${path.module}/policies/es-domain-s3-snapshot.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "general_permissions_boundary_policy" {
  template = file("${path.module}/policies/general_permissions_boundary.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "iam-services_policy" {
  template = file("${path.module}/policies/iam-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "lambda_boundary_policy_policy" {
  template = file("${path.module}/policies/lambda_boundary_policy.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "lambda_ddb_streams_boundary_policy_policy" {
  template = file("${path.module}/policies/lambda_ddb_streams_boundary_policy.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "machine-learning-services_policy" {
  template = file("${path.module}/policies/machine-learning-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "managed-services_policy" {
  template = file("${path.module}/policies/managed-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "ml_permissions_boundary_policy" {
  template = file("${path.module}/policies/ml_permissions_boundary.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "quicksight-contributor_policy" {
  template = file("${path.module}/policies/quicksight-contributor.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "quicksight-read-only_policy" {
  template = file("${path.module}/policies/quicksight-read-only.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "serverless-services_policy" {
  template = file("${path.module}/policies/serverless-services.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}

data "template_file" "user_permissions_boundary_policy" {
  template = file("${path.module}/policies/user_permissions_boundary.json")

  vars = {
    TeamCode = var.short_name
    TeamName = var.team_name
    AccountId = data.aws_caller_identity.current.account_id
    AllowEIPPermissions = "Deny"
    ECSPermissions = "Deny"
    ECRPermissions = "Deny"
    EC2InstanceConnectPermissions = "Deny"
  }
}
