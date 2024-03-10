resource "dynatrace_slack_notification" "app" {
  active  = true
  name    = "${var.workload_name} (${var.cluster}/${var.namespace})"
  profile = dynatrace_alerting.app.id
  url     = var.slack_webhook
  channel = var.slack_channel
  message = ":{State}: *{State} {ProblemTitle}*\n{ProblemURL}"
}