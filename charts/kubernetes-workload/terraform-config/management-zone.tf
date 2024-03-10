resource "dynatrace_management_zone_v2" "app" {
  name = "${var.workload_name} (${var.cluster}/${var.namespace})"
  rules {
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type = "PROCESS_GROUP"

        attribute_conditions {
          condition {
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = var.cluster
            case_sensitive = false
          }
          condition {
            key            = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator       = "EQUALS"
            string_value   = var.namespace
            case_sensitive = false
          }
          condition {
            key            = "CLOUD_APPLICATION_NAME"
            operator       = "EQUALS"
            string_value   = var.workload_name
            case_sensitive = false
          }
        }
      }
    }
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type = "CLOUD_APPLICATION"

        attribute_conditions {
          condition {
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = var.cluster
            case_sensitive = false
          }
          condition {
            key            = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator       = "EQUALS"
            string_value   = var.namespace
            case_sensitive = false
          }
          condition {
            key            = "CLOUD_APPLICATION_NAME"
            operator       = "EQUALS"
            string_value   = var.workload_name
            case_sensitive = false
          }
        }
      }
    }
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type = "AWS_RELATIONAL_DATABASE_SERVICE"

        attribute_conditions {
          condition {
            key            = "AWS_RELATIONAL_DATABASE_SERVICE_NAME"
            operator       = "EQUALS"
            string_value   = var.database_name
            case_sensitive = false
          }
        }
      }
    }
  }
}