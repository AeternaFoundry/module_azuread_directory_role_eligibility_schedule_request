variable "directory_role_eligibility_schedule_requests" {
  description = <<EOT
Map of directory_role_eligibility_schedule_requests, attributes below
Required:
    - directory_scope_id
    - justification
    - principal_id
    - role_definition_id
EOT

  type = map(object({
    directory_scope_id = string
    justification      = string
    principal_id       = string
    role_definition_id = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.directory_role_eligibility_schedule_requests : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.role_definition_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_role_eligibility_schedule_requests : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.principal_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_role_eligibility_schedule_requests : (
        length(v.directory_scope_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_role_eligibility_schedule_requests : (
        length(v.justification) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

