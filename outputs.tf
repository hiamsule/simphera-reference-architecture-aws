output "backup_vaults" {
  description = "Backups vaults from all SIMPHERA instances."
  value       = flatten([for name, instance in module.simphera_instance : instance.backup_vaults])
}

output "database_identifiers" {
  description = "Identifiers of the SIMPHERA and Keycloak databases from all SIMPHERA instances."
  value       = flatten([for name, instance in module.simphera_instance : instance.database_identifiers])
}

output "s3_buckets" {
  description = "S3 buckets from all SIMPHERA instances."
  value       = flatten([for name, instance in module.simphera_instance : instance.s3_buckets])
}
