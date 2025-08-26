
output "assignment_ids" {
  value = tomap({
    for k, inst in module.assignment : k => inst.assignment_ids
  })
}
