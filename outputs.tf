output "data_fusion_instances_id" {
  description = "Map of id values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no id are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_fusion_instances_accelerators" {
  description = "Map of accelerators values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no accelerators are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.accelerators if v.accelerators != null && length(v.accelerators) > 0 }
}
output "data_fusion_instances_api_endpoint" {
  description = "Map of api_endpoint values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no api_endpoint are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.api_endpoint if v.api_endpoint != null && length(v.api_endpoint) > 0 }
}
output "data_fusion_instances_create_time" {
  description = "Map of create_time values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no create_time are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "data_fusion_instances_crypto_key_config" {
  description = "Map of crypto_key_config values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no crypto_key_config are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => one(v.crypto_key_config) if v.crypto_key_config != null && length(v.crypto_key_config) > 0 }
}
output "data_fusion_instances_dataproc_service_account" {
  description = "Map of dataproc_service_account values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no dataproc_service_account are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.dataproc_service_account if v.dataproc_service_account != null && length(v.dataproc_service_account) > 0 }
}
output "data_fusion_instances_deletion_policy" {
  description = "Map of deletion_policy values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "data_fusion_instances_description" {
  description = "Map of description values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no description are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_fusion_instances_display_name" {
  description = "Map of display_name values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no display_name are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_fusion_instances_effective_labels" {
  description = "Map of effective_labels values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "data_fusion_instances_enable_rbac" {
  description = "Map of enable_rbac values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no enable_rbac are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.enable_rbac if v.enable_rbac != null }
}
output "data_fusion_instances_enable_stackdriver_logging" {
  description = "Map of enable_stackdriver_logging values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no enable_stackdriver_logging are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.enable_stackdriver_logging if v.enable_stackdriver_logging != null }
}
output "data_fusion_instances_enable_stackdriver_monitoring" {
  description = "Map of enable_stackdriver_monitoring values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no enable_stackdriver_monitoring are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.enable_stackdriver_monitoring if v.enable_stackdriver_monitoring != null }
}
output "data_fusion_instances_event_publish_config" {
  description = "Map of event_publish_config values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no event_publish_config are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => one(v.event_publish_config) if v.event_publish_config != null && length(v.event_publish_config) > 0 }
}
output "data_fusion_instances_gcs_bucket" {
  description = "Map of gcs_bucket values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no gcs_bucket are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.gcs_bucket if v.gcs_bucket != null && length(v.gcs_bucket) > 0 }
}
output "data_fusion_instances_labels" {
  description = "Map of labels values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no labels are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "data_fusion_instances_maintenance_events" {
  description = "Map of maintenance_events values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no maintenance_events are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.maintenance_events if v.maintenance_events != null && length(v.maintenance_events) > 0 }
}
output "data_fusion_instances_maintenance_policy" {
  description = "Map of maintenance_policy values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no maintenance_policy are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => one(v.maintenance_policy) if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "data_fusion_instances_name" {
  description = "Map of name values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no name are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_fusion_instances_network_config" {
  description = "Map of network_config values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no network_config are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => one(v.network_config) if v.network_config != null && length(v.network_config) > 0 }
}
output "data_fusion_instances_options" {
  description = "Map of options values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no options are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.options if v.options != null && length(v.options) > 0 }
}
output "data_fusion_instances_p4_service_account" {
  description = "Map of p4_service_account values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no p4_service_account are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.p4_service_account if v.p4_service_account != null && length(v.p4_service_account) > 0 }
}
output "data_fusion_instances_patch_revision" {
  description = "Map of patch_revision values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no patch_revision are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.patch_revision if v.patch_revision != null && length(v.patch_revision) > 0 }
}
output "data_fusion_instances_private_instance" {
  description = "Map of private_instance values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no private_instance are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.private_instance if v.private_instance != null }
}
output "data_fusion_instances_project" {
  description = "Map of project values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no project are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "data_fusion_instances_region" {
  description = "Map of region values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no region are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "data_fusion_instances_service_endpoint" {
  description = "Map of service_endpoint values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no service_endpoint are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.service_endpoint if v.service_endpoint != null && length(v.service_endpoint) > 0 }
}
output "data_fusion_instances_state" {
  description = "Map of state values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no state are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "data_fusion_instances_state_message" {
  description = "Map of state_message values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no state_message are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.state_message if v.state_message != null && length(v.state_message) > 0 }
}
output "data_fusion_instances_tags" {
  description = "Map of tags values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no tags are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "data_fusion_instances_tenant_project_id" {
  description = "Map of tenant_project_id values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no tenant_project_id are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.tenant_project_id if v.tenant_project_id != null && length(v.tenant_project_id) > 0 }
}
output "data_fusion_instances_terraform_labels" {
  description = "Map of terraform_labels values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "data_fusion_instances_type" {
  description = "Map of type values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no type are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.type if v.type != null && length(v.type) > 0 }
}
output "data_fusion_instances_update_time" {
  description = "Map of update_time values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no update_time are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "data_fusion_instances_version" {
  description = "Map of version values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no version are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.version if v.version != null && length(v.version) > 0 }
}
output "data_fusion_instances_zone" {
  description = "Map of zone values across all data_fusion_instances, keyed the same as var.data_fusion_instances except keys with no zone are omitted"
  value       = { for k, v in google_data_fusion_instance.data_fusion_instances : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

