output "autoscaling_groups_id" {
  description = "Map of id values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "autoscaling_groups_arn" {
  description = "Map of arn values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "autoscaling_groups_availability_zone_distribution" {
  description = "Map of availability_zone_distribution values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.availability_zone_distribution) if v.availability_zone_distribution != null && length(v.availability_zone_distribution) > 0 }
}
output "autoscaling_groups_availability_zones" {
  description = "Map of availability_zones values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "autoscaling_groups_capacity_rebalance" {
  description = "Map of capacity_rebalance values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.capacity_rebalance if v.capacity_rebalance != null }
}
output "autoscaling_groups_capacity_reservation_specification" {
  description = "Map of capacity_reservation_specification values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.capacity_reservation_specification) if v.capacity_reservation_specification != null && length(v.capacity_reservation_specification) > 0 }
}
output "autoscaling_groups_context" {
  description = "Map of context values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.context if v.context != null && length(v.context) > 0 }
}
output "autoscaling_groups_default_cooldown" {
  description = "Map of default_cooldown values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.default_cooldown if v.default_cooldown != null }
}
output "autoscaling_groups_default_instance_warmup" {
  description = "Map of default_instance_warmup values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.default_instance_warmup if v.default_instance_warmup != null }
}
output "autoscaling_groups_desired_capacity" {
  description = "Map of desired_capacity values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.desired_capacity if v.desired_capacity != null }
}
output "autoscaling_groups_desired_capacity_type" {
  description = "Map of desired_capacity_type values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.desired_capacity_type if v.desired_capacity_type != null && length(v.desired_capacity_type) > 0 }
}
output "autoscaling_groups_enabled_metrics" {
  description = "Map of enabled_metrics values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.enabled_metrics if v.enabled_metrics != null && length(v.enabled_metrics) > 0 }
}
output "autoscaling_groups_force_delete" {
  description = "Map of force_delete values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.force_delete if v.force_delete != null }
}
output "autoscaling_groups_force_delete_warm_pool" {
  description = "Map of force_delete_warm_pool values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.force_delete_warm_pool if v.force_delete_warm_pool != null }
}
output "autoscaling_groups_health_check_grace_period" {
  description = "Map of health_check_grace_period values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.health_check_grace_period if v.health_check_grace_period != null }
}
output "autoscaling_groups_health_check_type" {
  description = "Map of health_check_type values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.health_check_type if v.health_check_type != null && length(v.health_check_type) > 0 }
}
output "autoscaling_groups_ignore_failed_scaling_activities" {
  description = "Map of ignore_failed_scaling_activities values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.ignore_failed_scaling_activities if v.ignore_failed_scaling_activities != null }
}
output "autoscaling_groups_initial_lifecycle_hook" {
  description = "Map of initial_lifecycle_hook values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.initial_lifecycle_hook if v.initial_lifecycle_hook != null && length(v.initial_lifecycle_hook) > 0 }
}
output "autoscaling_groups_instance_lifecycle_policy" {
  description = "Map of instance_lifecycle_policy values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.instance_lifecycle_policy) if v.instance_lifecycle_policy != null && length(v.instance_lifecycle_policy) > 0 }
}
output "autoscaling_groups_instance_maintenance_policy" {
  description = "Map of instance_maintenance_policy values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.instance_maintenance_policy) if v.instance_maintenance_policy != null && length(v.instance_maintenance_policy) > 0 }
}
output "autoscaling_groups_instance_refresh" {
  description = "Map of instance_refresh values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.instance_refresh) if v.instance_refresh != null && length(v.instance_refresh) > 0 }
}
output "autoscaling_groups_launch_configuration" {
  description = "Map of launch_configuration values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.launch_configuration if v.launch_configuration != null && length(v.launch_configuration) > 0 }
}
output "autoscaling_groups_launch_template" {
  description = "Map of launch_template values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.launch_template) if v.launch_template != null && length(v.launch_template) > 0 }
}
output "autoscaling_groups_load_balancers" {
  description = "Map of load_balancers values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.load_balancers if v.load_balancers != null && length(v.load_balancers) > 0 }
}
output "autoscaling_groups_max_instance_lifetime" {
  description = "Map of max_instance_lifetime values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.max_instance_lifetime if v.max_instance_lifetime != null }
}
output "autoscaling_groups_max_size" {
  description = "Map of max_size values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.max_size if v.max_size != null }
}
output "autoscaling_groups_metrics_granularity" {
  description = "Map of metrics_granularity values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.metrics_granularity if v.metrics_granularity != null && length(v.metrics_granularity) > 0 }
}
output "autoscaling_groups_min_elb_capacity" {
  description = "Map of min_elb_capacity values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.min_elb_capacity if v.min_elb_capacity != null }
}
output "autoscaling_groups_min_size" {
  description = "Map of min_size values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.min_size if v.min_size != null }
}
output "autoscaling_groups_mixed_instances_policy" {
  description = "Map of mixed_instances_policy values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.mixed_instances_policy) if v.mixed_instances_policy != null && length(v.mixed_instances_policy) > 0 }
}
output "autoscaling_groups_name" {
  description = "Map of name values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "autoscaling_groups_name_prefix" {
  description = "Map of name_prefix values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "autoscaling_groups_placement_group" {
  description = "Map of placement_group values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.placement_group if v.placement_group != null && length(v.placement_group) > 0 }
}
output "autoscaling_groups_predicted_capacity" {
  description = "Map of predicted_capacity values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.predicted_capacity if v.predicted_capacity != null }
}
output "autoscaling_groups_protect_from_scale_in" {
  description = "Map of protect_from_scale_in values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.protect_from_scale_in if v.protect_from_scale_in != null }
}
output "autoscaling_groups_region" {
  description = "Map of region values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "autoscaling_groups_service_linked_role_arn" {
  description = "Map of service_linked_role_arn values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.service_linked_role_arn if v.service_linked_role_arn != null && length(v.service_linked_role_arn) > 0 }
}
output "autoscaling_groups_suspended_processes" {
  description = "Map of suspended_processes values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.suspended_processes if v.suspended_processes != null && length(v.suspended_processes) > 0 }
}
output "autoscaling_groups_tag" {
  description = "Map of tag values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.tag if v.tag != null && length(v.tag) > 0 }
}
output "autoscaling_groups_target_group_arns" {
  description = "Map of target_group_arns values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.target_group_arns if v.target_group_arns != null && length(v.target_group_arns) > 0 }
}
output "autoscaling_groups_termination_policies" {
  description = "Map of termination_policies values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.termination_policies if v.termination_policies != null && length(v.termination_policies) > 0 }
}
output "autoscaling_groups_traffic_source" {
  description = "Map of traffic_source values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.traffic_source if v.traffic_source != null && length(v.traffic_source) > 0 }
}
output "autoscaling_groups_vpc_zone_identifier" {
  description = "Map of vpc_zone_identifier values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.vpc_zone_identifier if v.vpc_zone_identifier != null && length(v.vpc_zone_identifier) > 0 }
}
output "autoscaling_groups_wait_for_capacity_timeout" {
  description = "Map of wait_for_capacity_timeout values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.wait_for_capacity_timeout if v.wait_for_capacity_timeout != null && length(v.wait_for_capacity_timeout) > 0 }
}
output "autoscaling_groups_wait_for_elb_capacity" {
  description = "Map of wait_for_elb_capacity values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.wait_for_elb_capacity if v.wait_for_elb_capacity != null }
}
output "autoscaling_groups_warm_pool" {
  description = "Map of warm_pool values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => one(v.warm_pool) if v.warm_pool != null && length(v.warm_pool) > 0 }
}
output "autoscaling_groups_warm_pool_size" {
  description = "Map of warm_pool_size values across all autoscaling_groups, keyed the same as var.autoscaling_groups"
  value       = { for k, v in aws_autoscaling_group.autoscaling_groups : k => v.warm_pool_size if v.warm_pool_size != null }
}

