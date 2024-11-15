variable "project_id" {
    default = "starry-seat-438408-p1"
}

variable "region" {
  description = "Region for resources"
  default = "europe-west3"
}

variable "image" {
  description = "Docker image"
  default = "europe-west3-docker.pkg.dev/starry-seat-438408-p1/web-images/vite-react-app:latest"
}

variable "service_name" {
  description = "Cloud Run Service Name"
  default = "vite-react-app-terraform"
}

variable "api_name" {
  type = string
  default = "my-api"
}

variable "db_connection_name" {
  type = string
  default = "starry-seat-438408-p1:europe-west3:example-db-instance"
}

variable "db_name" {
  type = string
  default = "sql_db_name"
}

variable "db_user" {
  type = string
  default = "test_user"
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "invoker_member" {
  type    = string
  default = "allUsers"
}
