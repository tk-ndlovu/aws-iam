locals {
  tags = tomap({
    "Environment" = lower(var.environment),
    "BuiltBy" = "terraform",
    "TeamEmailAddress" = var.team_email,
    "ApplicationName" = var.app_name,
    "Owner" = var.owner,
  })

  name_prefix = lower(join("-", tolist([
    var.app_name,
    var.environment,
  ])))
}