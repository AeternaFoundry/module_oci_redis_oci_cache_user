resource "oci_redis_oci_cache_user" "redis_oci_cache_users" {
  for_each = var.redis_oci_cache_users

  acl_string     = each.value.acl_string
  compartment_id = each.value.compartment_id
  description    = each.value.description
  name           = each.value.name
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags
  status         = each.value.status

  authentication_mode {
    authentication_type = each.value.authentication_mode.authentication_type
    hashed_passwords    = each.value.authentication_mode.hashed_passwords
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

