module "set_slo_availability" {
  source = "../modules/gcp_slo_availability"

  for_each        = local.variables.slo_availability
  service         = module.istio_services[each.key].service_id
  slo_id          = each.value.slo_id
  display_name    = each.value.display_name
  goal            = each.value.goal
  calendar_period = each.value.calendar_period
  enabled         = each.value.enabled
}