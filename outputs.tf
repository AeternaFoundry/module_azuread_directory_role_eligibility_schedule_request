output "directory_role_eligibility_schedule_requests_id" {
  description = "Map of id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.id }
}
output "directory_role_eligibility_schedule_requests_directory_scope_id" {
  description = "Map of directory_scope_id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.directory_scope_id }
}
output "directory_role_eligibility_schedule_requests_justification" {
  description = "Map of justification values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.justification }
}
output "directory_role_eligibility_schedule_requests_principal_id" {
  description = "Map of principal_id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.principal_id }
}
output "directory_role_eligibility_schedule_requests_role_definition_id" {
  description = "Map of role_definition_id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.role_definition_id }
}

