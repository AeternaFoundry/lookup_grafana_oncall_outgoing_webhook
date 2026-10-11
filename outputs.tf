output "oncall_outgoing_webhook_lookup_id" {
  description = "Map of id values across all oncall_outgoing_webhook_lookup, keyed the same as var.oncall_outgoing_webhook_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_oncall_outgoing_webhook.oncall_outgoing_webhook_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_outgoing_webhook_lookup_name" {
  description = "Map of name values across all oncall_outgoing_webhook_lookup, keyed the same as var.oncall_outgoing_webhook_lookup except keys with no name are omitted"
  value       = { for k, v in data.grafana_oncall_outgoing_webhook.oncall_outgoing_webhook_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

