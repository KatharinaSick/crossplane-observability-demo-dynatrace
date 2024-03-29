resource "dynatrace_alerting" "app" {
  name            = "${var.workload_name} (${var.cluster}/${var.namespace})"
  management_zone = dynatrace_management_zone_v2.app.legacy_id
  rules {
    rule {
      severity_level   = "MONITORING_UNAVAILABLE"
      delay_in_minutes = 0
      include_mode     = "NONE"
    }
    rule {
      severity_level   = "AVAILABILITY"
      delay_in_minutes = 0
      include_mode     = "NONE"
    }
    rule {
      severity_level   = "ERRORS"
      delay_in_minutes = 0
      include_mode     = "NONE"
    }
    rule {
      severity_level   = "PERFORMANCE"
      delay_in_minutes = 5
      include_mode     = "NONE"
    }
    rule {
      severity_level   = "RESOURCE_CONTENTION"
      delay_in_minutes = 0
      include_mode     = "NONE"
    }
    rule {
      severity_level   = "CUSTOM_ALERT"
      delay_in_minutes = 0
      include_mode     = "NONE"
    }
  }
}