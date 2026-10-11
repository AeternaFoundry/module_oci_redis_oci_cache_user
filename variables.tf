variable "redis_oci_cache_users" {
  description = <<EOT
Map of redis_oci_cache_users, attributes below
Required:
    - acl_string
    - compartment_id
    - description
    - name
    - authentication_mode (block):
        - authentication_type (required)
        - hashed_passwords (optional)
Optional:
    - defined_tags
    - freeform_tags
    - status
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    acl_string     = string
    compartment_id = string
    description    = string
    name           = string
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    status         = optional(string)
    authentication_mode = object({
      authentication_type = string
      hashed_passwords    = optional(list(string))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redis_oci_cache_users : (
        contains([for v in ["IAM", "PASSWORD"] : lower(v)], lower(v.authentication_mode.authentication_type))
      )
    ])
    error_message = "must be one of: \"IAM\", \"PASSWORD\""
  }
}

