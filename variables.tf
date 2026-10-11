variable "oncall_outgoing_webhook_lookup" {
  description = <<EOT
Map of oncall_outgoing_webhook_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}

