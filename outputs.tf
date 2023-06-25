output "cluster_name" {
  description = "The name of the OpenSearch cluster."
  value       = aws_elasticsearch_domain.opensearch.domain_name
}

output "cluster_version" {
  description = "The version of the OpenSearch cluster."
  value       = replace(aws_elasticsearch_domain.opensearch.elasticsearch_version, "OpenSearch_", "")
}

output "cluster_endpoint" {
  description = "The endpoint URL of the OpenSearch cluster."
  value       = local.custom_endpoint == null ? "" : "https://${local.custom_endpoint}"
}

output "kibana_endpoint" {
  description = "The endpoint URL of the OpenSearch dashboards."
  value       = local.custom_endpoint == null ? "" : "https://${local.custom_endpoint}/_dashboards/"
}
