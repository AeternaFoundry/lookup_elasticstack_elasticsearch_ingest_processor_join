variable "elasticsearch_ingest_processor_join_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_join_lookup, attributes below
Required:
    - field
    - separator
Optional:
    - description
    - if
    - ignore_failure
    - on_failure
    - tag
    - target_field
EOT

  type = map(object({
    field          = string
    separator      = string
    description    = optional(string)
    if             = optional(string)
    ignore_failure = optional(bool)
    on_failure     = optional(list(string))
    tag            = optional(string)
    target_field   = optional(string)
  }))
}

