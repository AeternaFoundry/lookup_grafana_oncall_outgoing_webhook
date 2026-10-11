data "grafana_oncall_outgoing_webhook" "oncall_outgoing_webhook_lookup" {
  for_each = var.oncall_outgoing_webhook_lookup

  name = each.value.name
}

