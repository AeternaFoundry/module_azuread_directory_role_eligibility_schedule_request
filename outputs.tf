output "directory_role_eligibility_schedule_requests_id" {
  description = "Map of id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_role_eligibility_schedule_requests_directory_scope_id" {
  description = "Map of directory_scope_id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.directory_scope_id if v.directory_scope_id != null && length(v.directory_scope_id) > 0 }
}
output "directory_role_eligibility_schedule_requests_justification" {
  description = "Map of justification values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.justification if v.justification != null && length(v.justification) > 0 }
}
output "directory_role_eligibility_schedule_requests_principal_id" {
  description = "Map of principal_id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "directory_role_eligibility_schedule_requests_role_definition_id" {
  description = "Map of role_definition_id values across all directory_role_eligibility_schedule_requests, keyed the same as var.directory_role_eligibility_schedule_requests"
  value       = { for k, v in azuread_directory_role_eligibility_schedule_request.directory_role_eligibility_schedule_requests : k => v.role_definition_id if v.role_definition_id != null && length(v.role_definition_id) > 0 }
}

