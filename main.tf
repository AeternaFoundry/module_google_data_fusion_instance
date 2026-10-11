resource "google_data_fusion_instance" "data_fusion_instances" {
  for_each = var.data_fusion_instances

  name                          = each.value.name
  type                          = each.value.type
  dataproc_service_account      = each.value.dataproc_service_account
  deletion_policy               = each.value.deletion_policy
  description                   = each.value.description
  display_name                  = each.value.display_name
  enable_rbac                   = each.value.enable_rbac
  enable_stackdriver_logging    = each.value.enable_stackdriver_logging
  enable_stackdriver_monitoring = each.value.enable_stackdriver_monitoring
  labels                        = each.value.labels
  options                       = each.value.options
  patch_revision                = each.value.patch_revision
  private_instance              = each.value.private_instance
  project                       = each.value.project
  region                        = each.value.region
  tags                          = each.value.tags
  version                       = each.value.version
  zone                          = each.value.zone

  dynamic "accelerators" {
    for_each = each.value.accelerators != null ? each.value.accelerators : []
    content {
      accelerator_type = accelerators.value.accelerator_type
      state            = accelerators.value.state
    }
  }

  dynamic "crypto_key_config" {
    for_each = each.value.crypto_key_config != null ? [each.value.crypto_key_config] : []
    content {
      key_reference = crypto_key_config.value.key_reference
    }
  }

  dynamic "event_publish_config" {
    for_each = each.value.event_publish_config != null ? [each.value.event_publish_config] : []
    content {
      enabled = event_publish_config.value.enabled
      topic   = event_publish_config.value.topic
    }
  }

  dynamic "maintenance_policy" {
    for_each = each.value.maintenance_policy != null ? [each.value.maintenance_policy] : []
    content {
      dynamic "maintenance_window" {
        for_each = maintenance_policy.value.maintenance_window != null ? [maintenance_policy.value.maintenance_window] : []
        content {
          recurring_time_window {
            recurrence = maintenance_window.value.recurring_time_window.recurrence
            window {
              end_time   = maintenance_window.value.recurring_time_window.window.end_time
              start_time = maintenance_window.value.recurring_time_window.window.start_time
            }
          }
        }
      }
    }
  }

  dynamic "network_config" {
    for_each = each.value.network_config != null ? [each.value.network_config] : []
    content {
      connection_type = network_config.value.connection_type
      ip_allocation   = network_config.value.ip_allocation
      network         = network_config.value.network
      dynamic "private_service_connect_config" {
        for_each = network_config.value.private_service_connect_config != null ? [network_config.value.private_service_connect_config] : []
        content {
          network_attachment     = private_service_connect_config.value.network_attachment
          unreachable_cidr_block = private_service_connect_config.value.unreachable_cidr_block
        }
      }
    }
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

