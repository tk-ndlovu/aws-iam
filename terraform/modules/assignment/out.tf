output "assignment_ids" {
  value = tomap({
    for k, inst in aws_ssoadmin_account_assignment.assignment : k => inst.id
  })
}