variable "autoscaling_groups" {
  description = <<EOT
Map of autoscaling_groups, attributes below
Required:
    - max_size
    - min_size
Optional:
    - availability_zones
    - capacity_rebalance
    - context
    - default_cooldown
    - default_instance_warmup
    - desired_capacity
    - desired_capacity_type
    - enabled_metrics
    - force_delete
    - force_delete_warm_pool
    - health_check_grace_period
    - health_check_type
    - ignore_failed_scaling_activities
    - launch_configuration
    - load_balancers
    - max_instance_lifetime
    - metrics_granularity
    - min_elb_capacity
    - name
    - name_prefix
    - placement_group
    - protect_from_scale_in
    - region
    - service_linked_role_arn
    - suspended_processes
    - target_group_arns
    - termination_policies
    - vpc_zone_identifier
    - wait_for_capacity_timeout
    - wait_for_elb_capacity
    - availability_zone_distribution (block):
        - capacity_distribution_strategy (optional)
    - capacity_reservation_specification (block):
        - capacity_reservation_preference (optional)
        - capacity_reservation_target (optional, block):
            - capacity_reservation_ids (optional)
            - capacity_reservation_resource_group_arns (optional)
    - initial_lifecycle_hook (block):
        - default_result (optional)
        - heartbeat_timeout (optional)
        - lifecycle_transition (required)
        - name (required)
        - notification_metadata (optional)
        - notification_target_arn (optional)
        - role_arn (optional)
    - instance_lifecycle_policy (block):
        - retention_triggers (optional, block):
            - terminate_hook_abandon (optional)
    - instance_maintenance_policy (block):
        - max_healthy_percentage (required)
        - min_healthy_percentage (required)
    - instance_refresh (block):
        - preferences (optional, block):
            - alarm_specification (optional, block):
                - alarms (optional)
            - auto_rollback (optional)
            - checkpoint_delay (optional)
            - checkpoint_percentages (optional)
            - instance_warmup (optional)
            - max_healthy_percentage (optional)
            - min_healthy_percentage (optional)
            - scale_in_protected_instances (optional)
            - skip_matching (optional)
            - standby_instances (optional)
        - strategy (required)
        - triggers (optional)
    - launch_template (block):
        - id (optional)
        - name (optional)
        - version (optional)
    - mixed_instances_policy (block):
        - instances_distribution (optional, block):
            - on_demand_allocation_strategy (optional)
            - on_demand_base_capacity (optional)
            - on_demand_percentage_above_base_capacity (optional)
            - spot_allocation_strategy (optional)
            - spot_instance_pools (optional)
            - spot_max_price (optional)
        - launch_template (required, block):
            - launch_template_specification (required, block):
                - launch_template_id (optional)
                - launch_template_name (optional)
                - version (optional)
            - override (optional, block):
                - instance_requirements (optional, block):
                    - accelerator_count (optional, block):
                        - max (optional)
                        - min (optional)
                    - accelerator_manufacturers (optional)
                    - accelerator_names (optional)
                    - accelerator_total_memory_mib (optional, block):
                        - max (optional)
                        - min (optional)
                    - accelerator_types (optional)
                    - allowed_instance_types (optional)
                    - bare_metal (optional)
                    - baseline_ebs_bandwidth_mbps (optional, block):
                        - max (optional)
                        - min (optional)
                    - burstable_performance (optional)
                    - cpu_manufacturers (optional)
                    - excluded_instance_types (optional)
                    - instance_generations (optional)
                    - local_storage (optional)
                    - local_storage_types (optional)
                    - max_spot_price_as_percentage_of_optimal_on_demand_price (optional)
                    - memory_gib_per_vcpu (optional, block):
                        - max (optional)
                        - min (optional)
                    - memory_mib (optional, block):
                        - max (optional)
                        - min (optional)
                    - network_bandwidth_gbps (optional, block):
                        - max (optional)
                        - min (optional)
                    - network_interface_count (optional, block):
                        - max (optional)
                        - min (optional)
                    - on_demand_max_price_percentage_over_lowest_price (optional)
                    - require_hibernate_support (optional)
                    - spot_max_price_percentage_over_lowest_price (optional)
                    - total_local_storage_gb (optional, block):
                        - max (optional)
                        - min (optional)
                    - vcpu_count (optional, block):
                        - max (optional)
                        - min (optional)
                - instance_type (optional)
                - launch_template_specification (optional, block):
                    - launch_template_id (optional)
                    - launch_template_name (optional)
                    - version (optional)
                - weighted_capacity (optional)
    - tag (block):
        - key (required)
        - propagate_at_launch (required)
        - value (required)
    - traffic_source (block):
        - identifier (required)
        - type (optional)
    - warm_pool (block):
        - instance_reuse_policy (optional, block):
            - reuse_on_scale_in (optional)
        - max_group_prepared_capacity (optional)
        - min_size (optional)
        - pool_state (optional)
EOT

  type = map(object({
    max_size                         = number
    min_size                         = number
    vpc_zone_identifier              = optional(set(string))
    termination_policies             = optional(list(string))
    target_group_arns                = optional(set(string))
    suspended_processes              = optional(set(string))
    service_linked_role_arn          = optional(string)
    region                           = optional(string)
    protect_from_scale_in            = optional(bool)
    placement_group                  = optional(string)
    name_prefix                      = optional(string)
    name                             = optional(string)
    min_elb_capacity                 = optional(number)
    metrics_granularity              = optional(string)
    max_instance_lifetime            = optional(number)
    load_balancers                   = optional(set(string))
    launch_configuration             = optional(string)
    ignore_failed_scaling_activities = optional(bool)
    health_check_type                = optional(string)
    health_check_grace_period        = optional(number)
    force_delete_warm_pool           = optional(bool)
    force_delete                     = optional(bool)
    enabled_metrics                  = optional(set(string))
    desired_capacity_type            = optional(string)
    desired_capacity                 = optional(number)
    default_instance_warmup          = optional(number)
    default_cooldown                 = optional(number)
    context                          = optional(string)
    capacity_rebalance               = optional(bool)
    availability_zones               = optional(set(string))
    wait_for_capacity_timeout        = optional(string)
    wait_for_elb_capacity            = optional(number)
    availability_zone_distribution = optional(object({
      capacity_distribution_strategy = optional(string)
    }))
    capacity_reservation_specification = optional(object({
      capacity_reservation_preference = optional(string)
      capacity_reservation_target = optional(object({
        capacity_reservation_ids                 = optional(list(string))
        capacity_reservation_resource_group_arns = optional(list(string))
      }))
    }))
    initial_lifecycle_hook = optional(list(object({
      default_result          = optional(string)
      heartbeat_timeout       = optional(number)
      lifecycle_transition    = string
      name                    = string
      notification_metadata   = optional(string)
      notification_target_arn = optional(string)
      role_arn                = optional(string)
    })))
    instance_lifecycle_policy = optional(object({
      retention_triggers = optional(object({
        terminate_hook_abandon = optional(string)
      }))
    }))
    instance_maintenance_policy = optional(object({
      max_healthy_percentage = number
      min_healthy_percentage = number
    }))
    instance_refresh = optional(object({
      preferences = optional(object({
        alarm_specification = optional(object({
          alarms = optional(list(string))
        }))
        auto_rollback                = optional(bool)
        checkpoint_delay             = optional(string)
        checkpoint_percentages       = optional(list(number))
        instance_warmup              = optional(string)
        max_healthy_percentage       = optional(number)
        min_healthy_percentage       = optional(number)
        scale_in_protected_instances = optional(string)
        skip_matching                = optional(bool)
        standby_instances            = optional(string)
      }))
      strategy = string
      triggers = optional(set(string))
    }))
    launch_template = optional(object({
      id      = optional(string)
      name    = optional(string)
      version = optional(string)
    }))
    mixed_instances_policy = optional(object({
      instances_distribution = optional(object({
        on_demand_allocation_strategy            = optional(string)
        on_demand_base_capacity                  = optional(number)
        on_demand_percentage_above_base_capacity = optional(number)
        spot_allocation_strategy                 = optional(string)
        spot_instance_pools                      = optional(number)
        spot_max_price                           = optional(string)
      }))
      launch_template = object({
        launch_template_specification = object({
          launch_template_id   = optional(string)
          launch_template_name = optional(string)
          version              = optional(string)
        })
        override = optional(list(object({
          instance_requirements = optional(object({
            accelerator_count = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            accelerator_manufacturers = optional(set(string))
            accelerator_names         = optional(set(string))
            accelerator_total_memory_mib = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            accelerator_types      = optional(set(string))
            allowed_instance_types = optional(set(string))
            bare_metal             = optional(string)
            baseline_ebs_bandwidth_mbps = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            burstable_performance                                   = optional(string)
            cpu_manufacturers                                       = optional(set(string))
            excluded_instance_types                                 = optional(set(string))
            instance_generations                                    = optional(set(string))
            local_storage                                           = optional(string)
            local_storage_types                                     = optional(set(string))
            max_spot_price_as_percentage_of_optimal_on_demand_price = optional(number)
            memory_gib_per_vcpu = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            memory_mib = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            network_bandwidth_gbps = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            network_interface_count = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            on_demand_max_price_percentage_over_lowest_price = optional(number)
            require_hibernate_support                        = optional(bool)
            spot_max_price_percentage_over_lowest_price      = optional(number)
            total_local_storage_gb = optional(object({
              max = optional(number)
              min = optional(number)
            }))
            vcpu_count = optional(object({
              max = optional(number)
              min = optional(number)
            }))
          }))
          instance_type = optional(string)
          launch_template_specification = optional(object({
            launch_template_id   = optional(string)
            launch_template_name = optional(string)
            version              = optional(string)
          }))
          weighted_capacity = optional(string)
        })))
      })
    }))
    tag = optional(list(object({
      key                 = string
      propagate_at_launch = bool
      value               = string
    })))
    traffic_source = optional(list(object({
      identifier = string
      type       = optional(string)
    })))
    warm_pool = optional(object({
      instance_reuse_policy = optional(object({
        reuse_on_scale_in = optional(bool)
      }))
      max_group_prepared_capacity = optional(number)
      min_size                    = optional(number)
      pool_state                  = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.initial_lifecycle_hook == null || alltrue([for item in v.initial_lifecycle_hook : (item.heartbeat_timeout == null || (item.heartbeat_timeout >= 30 && item.heartbeat_timeout <= 7200))])
      )
    ])
    error_message = "must be between 30 and 7200"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.instance_maintenance_policy == null || ((v.instance_maintenance_policy.max_healthy_percentage >= 100 && v.instance_maintenance_policy.max_healthy_percentage <= 200) || (v.instance_maintenance_policy.max_healthy_percentage >= -1 && v.instance_maintenance_policy.max_healthy_percentage <= -1))
      )
    ])
    error_message = "any of: must be between 100 and 200; must be between -1 and -1"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.instance_maintenance_policy == null || (v.instance_maintenance_policy.min_healthy_percentage >= -1 && v.instance_maintenance_policy.min_healthy_percentage <= 100)
      )
    ])
    error_message = "must be between -1 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.instance_refresh == null || (v.instance_refresh.preferences == null || (v.instance_refresh.preferences.max_healthy_percentage == null || (v.instance_refresh.preferences.max_healthy_percentage >= 100 && v.instance_refresh.preferences.max_healthy_percentage <= 200)))
      )
    ])
    error_message = "must be between 100 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.instance_refresh == null || (v.instance_refresh.preferences == null || (v.instance_refresh.preferences.min_healthy_percentage == null || (v.instance_refresh.preferences.min_healthy_percentage >= 0 && v.instance_refresh.preferences.min_healthy_percentage <= 100)))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.mixed_instances_policy == null || (v.mixed_instances_policy.instances_distribution == null || (v.mixed_instances_policy.instances_distribution.on_demand_base_capacity == null || (v.mixed_instances_policy.instances_distribution.on_demand_base_capacity >= 0)))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.mixed_instances_policy == null || (v.mixed_instances_policy.instances_distribution == null || (v.mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity == null || (v.mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity >= 0 && v.mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity <= 100)))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.mixed_instances_policy == null || (v.mixed_instances_policy.instances_distribution == null || (v.mixed_instances_policy.instances_distribution.spot_instance_pools == null || (v.mixed_instances_policy.instances_distribution.spot_instance_pools >= 0)))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_groups : (
        v.warm_pool == null || (v.warm_pool.min_size == null || (v.warm_pool.min_size >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 63 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

