output "connection_name" {
  value = google_sql_database_instance.db_instance.connection_name
}

output "db_name" {
  value = google_sql_database.db.name
}

output "db_user" {
  value = google_sql_user.db_user.name
}
