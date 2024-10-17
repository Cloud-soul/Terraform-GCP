resource "google_compute_http_health_check" "lb_health_check" {
  name               = var.health_check_name
  check_interval_sec = var.health_check_interval
  timeout_sec        = var.health_check_timeout
  healthy_threshold  = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold
  port               = var.health_check_port
  request_path       = var.health_check_path
}

resource "google_compute_target_pool" "lb_target_pool" {
  name = var.target_pool_name

  health_checks = [google_compute_http_health_check.lb_health_check.self_link]
}

resource "google_compute_instance_group" "instance_group" {
  name        = var.instance_group_name
  zone        = var.zone
  description = "Instance group for load balancing"

  named_port {
    name = "http"
    port = var.named_port
  }
}

resource "google_compute_instance_template" "lb_instance_template" {
  name        = var.instance_template_name
  description = "Instance template for load balancer instances"
  machine_type = var.machine_type
  
  disk {
    source_image = var.disk_image
    disk_size_gb = var.disk_size
    disk_type    = "pd-standard"
  }

  network_interface {
    network = var.network
  }
}

resource "google_compute_forwarding_rule" "lb_frontend" {
  name                  = var.forwarding_rule_name
  target                = google_compute_target_pool.lb_target_pool.self_link
  port_range            = var.port_range
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
}

resource "google_compute_firewall" "lb_firewall" {
  name    = var.firewall_name
  network = var.network

  allow {
    protocol = "tcp"
    ports    = [var.port_range]
  }

  source_ranges = ["0.0.0.0/0"]
}
