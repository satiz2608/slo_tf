locals {
  variables = {
    project          = "my-dec-project"
    credentials_file = "/Users/satheeshthangadhurai/Desktop/terraform-new/my-dec-project-b0a8f5f60d45.json"
    region           = "us-central1"
    zone             = "us-central1-c"

    canonical_service = {
      nginx = {
        mesh_uid                    = "proj-438268941528"
        canonical_service_namespace = "my-namespace"
        canonical_service           = "nginx"
      }
      hello = {
        mesh_uid                    = "proj-438268941528"
        canonical_service_namespace = "my-namespace"
        canonical_service           = "hello"
      }
    }

    slo_latency = {
      nginx = {
        slo_id = "nginx-latency"
        display_name = "nginx latency"
        goal = 0.9
        calendar_period = "DAY"
        threshold = "0.25s"
      }
      hello = {
        slo_id = "hello-latency"
        display_name = "hello latency"
        goal = 0.9
        calendar_period = "DAY"
        threshold = "0.25s"
      }
    }
    slo_availability = {
      nginx = {
        slo_id = "nginx-availability"
        display_name = "nginx availability"
        goal = 0.9
        calendar_period = "DAY"
        enabled = true
      }
      hello = {
        slo_id = "hello-availability"
        display_name = "hello availability"
        goal = 0.9
        calendar_period = "DAY"
        enabled = true
      }
    }  
  }
}





