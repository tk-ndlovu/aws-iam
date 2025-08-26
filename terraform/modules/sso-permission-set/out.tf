output "permission_set_arns" {
  value = { for k, ps in aws_ssoadmin_permission_set.this : k => ps.arn }
}

output "instance_arn" {
  value = var.sso_instance_arn
}
