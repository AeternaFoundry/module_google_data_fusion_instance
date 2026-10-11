variable "data_fusion_instances" {
  description = <<EOT
Map of data_fusion_instances, attributes below
Required:
    - name
    - type
Optional:
    - dataproc_service_account
    - deletion_policy
    - description
    - display_name
    - enable_rbac
    - enable_stackdriver_logging
    - enable_stackdriver_monitoring
    - labels
    - options
    - patch_revision
    - private_instance
    - project
    - region
    - tags
    - version
    - zone
    - accelerators (block):
        - accelerator_type (required)
        - state (required)
    - crypto_key_config (block):
        - key_reference (required)
    - event_publish_config (block):
        - enabled (required)
        - topic (required)
    - maintenance_policy (block):
        - maintenance_window (optional, block):
            - recurring_time_window (required, block):
                - recurrence (required)
                - window (required, block):
                    - end_time (required)
                    - start_time (required)
    - network_config (block):
        - connection_type (optional)
        - ip_allocation (optional)
        - network (optional)
        - private_service_connect_config (optional, block):
            - network_attachment (optional)
            - unreachable_cidr_block (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                          = string
    type                          = string
    dataproc_service_account      = optional(string)
    deletion_policy               = optional(string)
    description                   = optional(string)
    display_name                  = optional(string)
    enable_rbac                   = optional(bool)
    enable_stackdriver_logging    = optional(bool)
    enable_stackdriver_monitoring = optional(bool)
    labels                        = optional(map(string))
    options                       = optional(map(string))
    patch_revision                = optional(string)
    private_instance              = optional(bool)
    project                       = optional(string)
    region                        = optional(string)
    tags                          = optional(map(string))
    version                       = optional(string)
    zone                          = optional(string)
    accelerators = optional(list(object({
      accelerator_type = string
      state            = string
    })))
    crypto_key_config = optional(object({
      key_reference = string
    }))
    event_publish_config = optional(object({
      enabled = bool
      topic   = string
    }))
    maintenance_policy = optional(object({
      maintenance_window = optional(object({
        recurring_time_window = object({
          recurrence = string
          window = object({
            end_time   = string
            start_time = string
          })
        })
      }))
    }))
    network_config = optional(object({
      connection_type = optional(string)
      ip_allocation   = optional(string)
      network         = optional(string)
      private_service_connect_config = optional(object({
        network_attachment     = optional(string)
        unreachable_cidr_block = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

