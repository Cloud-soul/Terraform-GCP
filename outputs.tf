
output "service_name" {
  value = google_cloud_run_v2_service.default.name
}

output "db_instance_name" {
  value = google_sql_database_instance.main.name
}

output "db_user_name" {
  value = google_sql_user.db_user.name
}

output "forwarding_rule_ip" {
  value = google_compute_forwarding_rule.lb_frontend.ip_address
}

output "instance_group_name" {
  value = google_compute_instance_group.instance_group.name
}

output "health_check_url" {
  value = "http://${google_compute_forwarding_rule.lb_frontend.ip_address}${google_compute_http_health_check.lb_health_check.request_path}"
}