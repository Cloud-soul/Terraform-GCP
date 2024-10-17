resource "google_cloud_run_v2_service" "default" {
  name     = var.service_name
  location = var.location
  deletion_protection = var.deletion_protection
  ingress = var.ingress

  template {
    containers {
      image = var.image
    }
  }
}
