output "service_id" {
  value = data.google_monitoring_istio_canonical_service.canonical_service.service_id
}
