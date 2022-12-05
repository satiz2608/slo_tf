output "service_value" {
  value = module.istio_services
}

output "slo_latency" {
  value = module.set_slo_latency
}

output "slo_availability" {
  value = module.set_slo_availability
}
