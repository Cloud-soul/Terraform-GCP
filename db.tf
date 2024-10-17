resource "google_sql_database_instance" "main" {
  name             = "psc-enabled-main-instance"
  database_version = var.db_version
  region           = var.region

  settings {
    tier = var.db_tier
  }
}

resource "google_sql_user" "db_user" {
  name     = var.db_user
  instance = google_sql_database_instance.main.name
  password = var.db_password  
}
