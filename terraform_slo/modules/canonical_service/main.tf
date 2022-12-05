data "google_monitoring_istio_canonical_service" "canonical_service" {
  mesh_uid                    = var.mesh_uid
  canonical_service_namespace = var.canonical_service_namespace
  canonical_service           = var.canonical_service
}
