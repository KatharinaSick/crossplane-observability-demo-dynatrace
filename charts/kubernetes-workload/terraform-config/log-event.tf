resource "dynatrace_log_events" "emergency_logs" {
  enabled = true
  query   = "dt.kubernetes.cluster.name == \"${var.cluster}\" and k8s.namespace.name == \"${var.namespace}\" and loglevel == \"EMERGENCY\""
  summary = "${var.workload_name} (${var.cluster}/${var.namespace}) - Emergency Log"
  event_template {
    title       = "Emergency Logs found in ${var.workload_name} (${var.cluster}/${var.namespace})"
    description = "We have discovered logs with level 'EMERGENCY' in the workload ${var.workload_name} (${var.cluster}/${var.namespace}): {content}"
    event_type  = "CUSTOM_ALERT"
    davis_merge = true
  }
}