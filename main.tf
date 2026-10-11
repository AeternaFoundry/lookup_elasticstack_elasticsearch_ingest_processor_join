data "elasticstack_elasticsearch_ingest_processor_join" "elasticsearch_ingest_processor_join_lookup" {
  for_each = var.elasticsearch_ingest_processor_join_lookup

  field          = each.value.field
  separator      = each.value.separator
  description    = each.value.description
  if             = each.value.if
  ignore_failure = each.value.ignore_failure
  on_failure     = each.value.on_failure
  tag            = each.value.tag
  target_field   = each.value.target_field
}

