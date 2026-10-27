resource "azuread_directory_role_eligibility_schedule_request" "directory_role_eligibility_schedule_requests" {
  for_each = var.directory_role_eligibility_schedule_requests

  directory_scope_id = each.value.directory_scope_id
  justification      = each.value.justification
  principal_id       = each.value.principal_id
  role_definition_id = each.value.role_definition_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

