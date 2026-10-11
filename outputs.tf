output "redis_oci_cache_users_id" {
  description = "Map of id values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no id are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_oci_cache_users_acl_string" {
  description = "Map of acl_string values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no acl_string are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.acl_string if v.acl_string != null && length(v.acl_string) > 0 }
}
output "redis_oci_cache_users_authentication_mode" {
  description = "Map of authentication_mode values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no authentication_mode are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => one(v.authentication_mode) if v.authentication_mode != null && length(v.authentication_mode) > 0 }
  sensitive   = true
}
output "redis_oci_cache_users_compartment_id" {
  description = "Map of compartment_id values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no compartment_id are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "redis_oci_cache_users_defined_tags" {
  description = "Map of defined_tags values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no defined_tags are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "redis_oci_cache_users_description" {
  description = "Map of description values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no description are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.description if v.description != null && length(v.description) > 0 }
}
output "redis_oci_cache_users_freeform_tags" {
  description = "Map of freeform_tags values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "redis_oci_cache_users_name" {
  description = "Map of name values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no name are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redis_oci_cache_users_state" {
  description = "Map of state values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no state are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.state if v.state != null && length(v.state) > 0 }
}
output "redis_oci_cache_users_status" {
  description = "Map of status values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no status are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.status if v.status != null && length(v.status) > 0 }
}
output "redis_oci_cache_users_system_tags" {
  description = "Map of system_tags values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no system_tags are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "redis_oci_cache_users_time_created" {
  description = "Map of time_created values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no time_created are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "redis_oci_cache_users_time_updated" {
  description = "Map of time_updated values across all redis_oci_cache_users, keyed the same as var.redis_oci_cache_users except keys with no time_updated are omitted"
  value       = { for k, v in oci_redis_oci_cache_user.redis_oci_cache_users : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

