module "set_slo_latency" {
  source = "../modules/gcp_slo_latency"

  for_each        = local.variables.slo_latency
  service         = module.istio_services[each.key].service_id
  slo_id          = each.value.slo_id
  display_name    = each.value.display_name
  goal            = each.value.goal
  calendar_period = each.value.calendar_period
  threshold       = each.value.threshold
}