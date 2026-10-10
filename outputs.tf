output "backup_global_settings_id" {
  description = "Map of id values across all backup_global_settings, keyed the same as var.backup_global_settings"
  value       = { for k, v in aws_backup_global_settings.backup_global_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_global_settings_global_settings" {
  description = "Map of global_settings values across all backup_global_settings, keyed the same as var.backup_global_settings"
  value       = { for k, v in aws_backup_global_settings.backup_global_settings : k => v.global_settings if v.global_settings != null && length(v.global_settings) > 0 }
}

