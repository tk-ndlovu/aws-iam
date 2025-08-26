
resource "aws_ssoadmin_permission_set" "this" {
  for_each = var.permission_sets

  name             = "SSO-${var.short_name}-${replace(each.key, "SSO", "")}"
  description      = each.value.description
  session_duration = each.value.session_duration
  instance_arn     = var.sso_instance_arn

  tags = merge(
    var.tags,
    tomap({ "Name" = "SSO-${var.short_name}-${replace(each.key, "SSO", "")}"}),
  )
}

resource "aws_ssoadmin_managed_policy_attachment" "policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn != null
  }

  instance_arn       = var.sso_instance_arn
  managed_policy_arn = each.value.managed_policy_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn
}

################compute services policy################
resource "aws_iam_policy" "compute_services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-compute-services-policy")
  path   = "/"
  policy = data.template_file.compute_services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "compute_services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.compute_services_permission_policy.name
    path = "/"
  }
}

################database-services policy################
resource "aws_iam_policy" "database-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-database-services-policy")
  path   = "/"
  policy = data.template_file.database-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "database-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.database-services_permission_policy.name
    path = "/"
  }
}

################devtool-services policy################
resource "aws_iam_policy" "devtool-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-devtool-services-policy")
  path   = "/"
  policy = data.template_file.devtool-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "devtool-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.devtool-services_permission_policy.name
    path = "/"
  }
}

################devtool-services policy################
resource "aws_iam_policy" "devtool-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-devtool-services-policy")
  path   = "/"
  policy = data.template_file.devtool-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "devtool-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.devtool-services_permission_policy.name
    path = "/"
  }
}

################devtool-services policy################
resource "aws_iam_policy" "devtool-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-devtool-services-policy")
  path   = "/"
  policy = data.template_file.devtool-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "devtool-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.devtool-services_permission_policy.name
    path = "/"
  }
}

################devtools_permissions_boundary policy################
resource "aws_iam_policy" "devtools_permissions_boundary_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-devtools_permissions_boundary-policy")
  path   = "/"
  policy = data.template_file.devtools_permissions_boundary_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "devtools_permissions_boundary_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.devtools_permissions_boundary_permission_policy.name
    path = "/"
  }
}

################dns-services policy################
resource "aws_iam_policy" "dns-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-dns-services-policy")
  path   = "/"
  policy = data.template_file.dns-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "dns-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.dns-services_permission_policy.name
    path = "/"
  }
}

################es-domain-s3-snapshot policy################
resource "aws_iam_policy" "es-domain-s3-snapshot_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-es-domain-s3-snapshot-policy")
  path   = "/"
  policy = data.template_file.es-domain-s3-snapshot_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "es-domain-s3-snapshot_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.es-domain-s3-snapshot_permission_policy.name
    path = "/"
  }
}

################compute services policy################
resource "aws_iam_policy" "general_permissions_boundary_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-general_permissions_boundary-policy")
  path   = "/"
  policy = data.template_file.general_permissions_boundary_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "general_permissions_boundary_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.general_permissions_boundary_permission_policy.name
    path = "/"
  }
}

################iam-services policy################
resource "aws_iam_policy" "iam-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-iam-services-policy")
  path   = "/"
  policy = data.template_file.iam-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "iam-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.iam-services_permission_policy.name
    path = "/"
  }
}

################lambda_boundary_policy policy################
resource "aws_iam_policy" "lambda_boundary_policy_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-lambda_boundary_policy-policy")
  path   = "/"
  policy = data.template_file.lambda_boundary_policy_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "lambda_boundary_policy_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.lambda_boundary_policy_permission_policy.name
    path = "/"
  }
}

################lambda_ddb_streams_boundary_policy policy################
resource "aws_iam_policy" "lambda_ddb_streams_boundary_policy_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-lambda_ddb_streams_boundary_policy-policy")
  path   = "/"
  policy = data.template_file.lambda_ddb_streams_boundary_policy_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "lambda_ddb_streams_boundary_policy_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.lambda_ddb_streams_boundary_policy_permission_policy.name
    path = "/"
  }
}

################machine-learning-services policy################
resource "aws_iam_policy" "machine-learning-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-compute-services-policy")
  path   = "/"
  policy = data.template_file.machine-learning-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "machine-learning-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.machine-learning-services_permission_policy.name
    path = "/"
  }
}

################managed-services policy################
resource "aws_iam_policy" "managed-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-managed-services-policy")
  path   = "/"
  policy = data.template_file.managed-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "managed-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.managed-services_permission_policy.name
    path = "/"
  }
}

################ml_permissions_boundary policy################
resource "aws_iam_policy" "ml_permissions_boundary_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-ml_permissions_boundary-policy")
  path   = "/"
  policy = data.template_file.ml_permissions_boundary_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "ml_permissions_boundary_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.ml_permissions_boundary_permission_policy.name
    path = "/"
  }
}

################quicksight-contributor policy################
resource "aws_iam_policy" "quicksight-contributor_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-quicksight-contributor-policy")
  path   = "/"
  policy = data.template_file.quicksight-contributor_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "quicksight-contributor_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.quicksight-contributor_permission_policy.name
    path = "/"
  }
}

################quicksight-read-only policy################
resource "aws_iam_policy" "quicksight-read-only_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-quicksight-read-only-policy")
  path   = "/"
  policy = data.template_file.quicksight-read-only_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "quicksight-read-only_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.quicksight-read-only_permission_policy.name
    path = "/"
  }
}

################serverless-services policy################
resource "aws_iam_policy" "serverless-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-serverless-services-policy")
  path   = "/"
  policy = data.template_file.serverless-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "serverless-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.serverless-services_permission_policy.name
    path = "/"
  }
}

################storage-services policy################
resource "aws_iam_policy" "storage-services_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-storage-services-policy")
  path   = "/"
  policy = data.template_file.storage-services_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "storage-services_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.storage-services_permission_policy.name
    path = "/"
  }
}

################user_permissions_boundary policy################
resource "aws_iam_policy" "user_permissions_boundary_permission_policy" {
  # for_each = {
  #   for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  # }

  name   = lower("SSO-${var.short_name}-user_permissions_boundary-policy")
  path   = "/"
  policy = data.template_file.user_permissions_boundary_policy.rendered
}


resource "aws_ssoadmin_customer_managed_policy_attachment" "user_permissions_boundary_permission_policy_attachment" {
  for_each = {
    for k, v in var.permission_sets : k => v if v.managed_policy_arn == null
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.key].arn

  customer_managed_policy_reference {
    name = aws_iam_policy.user_permissions_boundary_permission_policy.name
    path = "/"
  }
}

