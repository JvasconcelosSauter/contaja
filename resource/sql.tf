resource "google_sql_database_instance" "mysql_instance" {
  name             = "mysql-contaja"
  database_version = "MYSQL_5_7"
  region           = "southamerica-east1"

  settings {
    tier = "db-custom-2-4096"

    backup_configuration {
      binary_log_enabled = true
      enabled            = true
      start_time         = "05:00"
    }

    ip_configuration {
      ipv4_enabled = true
    }
  }
}

resource "google_sql_database" "default" {
  name     = "my-database"
  instance = google_sql_database_instance.mysql_instance.name
}

resource "google_sql_user" "default" {
  name     = "my-sql-user"
  instance = google_sql_database_instance.mysql_instance.name
  password = "my-secret-password"
}
