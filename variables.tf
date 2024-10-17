variable "db_password" {
  type    = string
  default = "qwerty123" 
}

variable "db_user" {
  type    = string
  default = "pgadmin" 
}

variable "db_version" {
  type    = string
  default = "POSTGRES_15"
}

variable "db_tier" {
  type    = string
  default = "db-f1-micro"
}

variable "service_name" {
  type    = string
  default = "cloudrun-service"
}

variable "location" {
  type    = string
  default = "us-central1"
}

variable "deletion_protection" {
  type    = bool
  default = false
}

variable "ingress" {
  type    = string
  default = "INGRESS_TRAFFIC_ALL"
}

variable "image" {
  type    = string
  default = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "project" {
  type    = string
  default = "myproject" 
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "health_check_name" {
  type    = string
  default = "lb-health-check"
}

variable "health_check_interval" {
  type    = number
  default = 1
}

variable "health_check_timeout" {
  type    = number
  default = 1
}

variable "healthy_threshold" {
  type    = number
  default = 1
}

variable "unhealthy_threshold" {
  type    = number
  default = 2
}

variable "health_check_port" {
  type    = number
  default = 80
}

variable "health_check_path" {
  type    = string
  default = "/healthz"
}

variable "target_pool_name" {
  type    = string
  default = "lb-target-pool"
}

variable "instance_group_name" {
  type    = string
  default = "instance-group"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "named_port" {
  type    = number
  default = 80
}

variable "instance_template_name" {
  type    = string
  default = "lb-instance-template"
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}

variable "disk_image" {
  type    = string
  default = "ubuntu-2004-focal-v20240209"
}

variable "disk_size" {
  type    = number
  default = 10
}

variable "network" {
  type    = string
  default = "default"
}

variable "forwarding_rule_name" {
  type    = string
  default = "lb-frontend"
}

variable "firewall_name" {
  type    = string
  default = "lb-firewall"
}

variable "port_range" {
  type    = string
  default = "80"
}
