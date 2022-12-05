module "istio_services" {
  source = "../modules/canonical_service"

  for_each                    = local.variables.canonical_service
  mesh_uid                    = each.value.mesh_uid
  canonical_service_namespace = each.value.canonical_service_namespace
  canonical_service           = each.value.canonical_service
}


