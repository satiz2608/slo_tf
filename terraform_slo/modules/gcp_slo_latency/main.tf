resource "google_monitoring_slo" "slo_latency" {
  service = var.service

  slo_id = var.slo_id
  display_name = var.display_name

  goal = var.goal
  calendar_period = var.calendar_period

  basic_sli {
    latency {
      threshold = var.threshold
    }
  }
}